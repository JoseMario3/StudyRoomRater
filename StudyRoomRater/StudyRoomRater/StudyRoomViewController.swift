//
//  StudyRoomViewController.swift
//  StudyRoomRater
//
//  Created by Wonsang Lee on 11/10/23.
//

import Foundation
import UIKit

class StudyRoomViewController: UIViewController {
    
    var name: String!
    var image: UIImage!
    var location: String!
    var distance: Int!
    var occupancy: Int!
    var reservation: Bool!
    var outlets: Int!
    var reviews: Int!
    var fiveStar: Int!
    var fourStar: Int!
    var threeStar: Int!
    var twoStar: Int!
    var oneStar: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theImageFrame = CGRect(x: view.frame.midX - image.size.width/2, y: 120, width: image.size.width, height: image.size.height)
        let imageView = UIImageView(frame:theImageFrame)
        imageView.image = image
        view.addSubview(imageView)
        
        let titleFrame = CGRect(x: 0, y: image.size.height + 120, width: view.frame.width, height: 30)
        let titleView = UILabel(frame: titleFrame)
        titleView.text = name
        titleView.textAlignment = .center
        titleView.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(titleView)
        
        let distanceFrame = CGRect(x: 0, y: image.size.height + 150, width: view.frame.width, height: 30)
        let distanceView = UILabel(frame: distanceFrame)
        distanceView.text = "Distance from Location: " + String(distance)
        distanceView.textAlignment = .center
        view.addSubview(distanceView)

        let occupancyFrame = CGRect(x: 0, y: image.size.height + 170, width: view.frame.width, height: 30)
        let occupancyView = UILabel(frame: occupancyFrame)
        occupancyView.text = "Occupany: " + String(occupancy)
        occupancyView.textAlignment = .center
        view.addSubview(occupancyView)
        
        let reservationFrame = CGRect(x: 0, y: image.size.height + 190, width: view.frame.width, height: 30)
        let reservationView = UILabel(frame: reservationFrame)
        if reservation {
            reservationView.text = "Reservantion: Required"
        }
        else{
            reservationView.text = "Reservantion: Not Required"
        }
        reservationView.textAlignment = .center
        view.addSubview(reservationView)
        
        let outletFrame = CGRect(x: 0, y: image.size.height + 210, width: view.frame.width, height: 30)
        let outletView = UILabel(frame: outletFrame)
        outletView.text = "Occupany: " + String(outlets)
        outletView.textAlignment = .center
        view.addSubview(outletView)
        
        let ratingsFrame = CGRect(x: 0, y: image.size.height + 250, width: view.frame.width, height: 75)
        
        let reviewsButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Show Reviews", for: .normal)
            button.addTarget(self, action: #selector(showReviews), for: .touchUpInside)
            return button
        }()
        reviewsButton.frame = CGRect(x: 100, y: image.size.height + 250, width: 200, height: 40)
        view.addSubview(reviewsButton)
    }
    
    @objc func showReviews() {
        let reviewsVC = ReviewsViewController()
        navigationController?.pushViewController(reviewsVC, animated: true)
    }
}
