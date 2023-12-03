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

    @IBOutlet weak var reviewContainer: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var chairsLabel: UILabel!
    @IBOutlet weak var tablesLabel: UILabel!
    @IBOutlet weak var outletsLabel: UILabel!

    @IBOutlet weak var fiveStarLabel: UILabel!
    @IBOutlet weak var fiveStarProgress: UIProgressView!
    @IBOutlet weak var fourStarLabel: UILabel!
    @IBOutlet weak var fourStarProgress: UIProgressView!
    @IBOutlet weak var threeStarLabel: UILabel!
    @IBOutlet weak var threeStarProgress: UIProgressView!
    @IBOutlet weak var twoStarLabel: UILabel!
    @IBOutlet weak var twoStarProgress: UIProgressView!
    @IBOutlet weak var oneStarLabel: UILabel!
    @IBOutlet weak var oneStarProgress: UIProgressView!
    
    @IBOutlet weak var oneStarImage: UIImageView!
    @IBOutlet weak var twoStarImage: UIImageView!
    @IBOutlet weak var fourStarImage: UIImageView!
    @IBOutlet weak var threeStarImage: UIImageView!
    @IBOutlet weak var fiveImage: UIImageView!
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
            reviewContainer.layer.borderWidth = 1.0
            reviewContainer.layer.borderColor = UIColor.black.cgColor
            reviewContainer.layer.cornerRadius = 8.0
            reviewContainer.layer.masksToBounds = true
            let totalReviews = room.reviews.count
            if totalReviews > 0 {
                var totalRating = 0
                for review in room.reviews {
                    totalRating += Int(review.rating)
                }
                let averageReview = (Double(totalRating) / Double(totalReviews))
                totalReviewsLabel.text = String(totalReviews) + " reviews"
                averageReviewsLabel.text = String(format: "%.02f", averageReview)
                if Double(1) <= averageReview {
                    oneStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 0.5 <= averageReview {
                    oneStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(2) <= averageReview {
                    twoStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 1.5 <= averageReview {
                    twoStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(3) <= averageReview {
                    threeStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 2.5 <= averageReview {
                    threeStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(4) <= averageReview {
                    fourStarImage.image = UIImage(systemName: "star.fill")
                }
                else if 3.5 <= averageReview {
                    fourStarImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
                if Double(5) <= averageReview {
                    fiveImage.image = UIImage(systemName: "star.fill")
                }
                else if 4.5 <= averageReview {
                    fiveImage.image = UIImage(systemName: "star.lefthalf.fill")
                }
    
                let oneStarPercentage: CGFloat = CGFloat(room.reviews.filter({ $0.rating == 1 }).count)/CGFloat(totalReviews)
                let fullWidth = oneStarProgress.frame.width
                let filledWidth = fullWidth * oneStarPercentage
                oneStarProgress.frame.size.width = filledWidth
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
                print("Performing segue with room: \(room)")
                destinationVC.reviewsArray = room!.reviews
            }
        }
    }
}
