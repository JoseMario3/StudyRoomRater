//
//  RoomDetailViewController.swift
//  StudyRoomRater
//
//  Created by Joseph Lanfersieck on 11/13/23.
//

import Foundation
import UIKit

class RoomDetailViewController: UIViewController {

    var room: StudyRoom?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var chairsLabel: UILabel!
    @IBOutlet weak var tablesLabel: UILabel!
    @IBOutlet weak var outletsLabel: UILabel!

    //just shows number of reviews for each star for now
    @IBOutlet weak var fiveStarLabel: UILabel!
    @IBOutlet weak var fourStarLabel: UILabel!
    @IBOutlet weak var threeStarLabel: UILabel!
    @IBOutlet weak var twoStarLabel: UILabel!
    @IBOutlet weak var oneStarLabel: UILabel!
    
    @IBOutlet weak var totalReviewsLabel: UILabel!
    @IBOutlet weak var averageReviewsLabel: UILabel!
    
    @IBOutlet weak var showReviewsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let room = room {
            nameLabel.text = room.name
            descriptionLabel.text = room.description
            chairsLabel.text = "Chairs: \(room.numChairs)"
            tablesLabel.text = "Tables: \(room.numTables)"
            outletsLabel.text = "Outlets: \(room.numOutlets)"
            
            let totalReviews = room.reviews.count
            if totalReviews > 0 {
                var totalRating = 0
                for review in room.reviews {
                    totalRating += Int(review.rating)
                }
                let averageReview = (Double(totalRating) / Double(totalReviews))
                totalReviewsLabel.text = String(totalReviews) + " reviews"
                averageReviewsLabel.text = String(format: "%.02f", averageReview)
        
                oneStarLabel.text = "1 Star: " + String(room.reviews.filter({ $0.rating == 1 }).count)
                twoStarLabel.text = "2 Star: " + String(room.reviews.filter({ $0.rating == 2 }).count)
                threeStarLabel.text = "3 Star: " + String(room.reviews.filter({ $0.rating == 3 }).count)
                fourStarLabel.text = "4 Star: " + String(room.reviews.filter({ $0.rating == 4 }).count)
                fiveStarLabel.text = "5 Star: " + String(room.reviews.filter({ $0.rating == 5 }).count)
            }
        }
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRoomReviews" {
            if let destinationVC = segue.destination as? ReviewsViewController {
                destinationVC.reviewsArray = room!.reviews
            }
        }
    }
}
