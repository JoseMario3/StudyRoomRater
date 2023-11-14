////
////  StudyRoomViewController.swift
////  StudyRoomRater
////
////  Created by Wonsang Lee on 11/10/23.
////
//
//import Foundation
//import UIKit
//
//struct Review {
//    var rating: Int!
//    var comment: String!
//    var username: String!
//}
//class StudyRoomViewController: UIViewController {
//
//    var name: String!
//    var image: UIImage!
//    var location: String!
//    var distance: Int!
//    var occupancy: Int!
//    var reservation: Bool!
//    var outlets: Int!
//    var reviews: Int!
//    var fiveStar: Int!
//    var fourStar: Int!
//    var threeStar: Int!
//    var twoStar: Int!
//    var oneStar: Int!
//    var ratingsView: UIView!
//
//    var reviewsArray: [Review] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let theImageFrame = CGRect(x: view.frame.midX - image.size.width/2, y: 120, width: image.size.width, height: image.size.height)
//        let imageView = UIImageView(frame:theImageFrame)
//        imageView.image = image
//        view.addSubview(imageView)
//
//        let titleFrame = CGRect(x: 0, y: image.size.height + 120, width: view.frame.width, height: 30)
//        let titleView = UILabel(frame: titleFrame)
//        titleView.text = name
//        titleView.textAlignment = .center
//        titleView.font = UIFont.boldSystemFont(ofSize: 20)
//        view.addSubview(titleView)
//
//        let distanceFrame = CGRect(x: 0, y: image.size.height + 150, width: view.frame.width, height: 30)
//        let distanceView = UILabel(frame: distanceFrame)
//        distanceView.text = "Distance from Location: " + String(distance)
//        distanceView.textAlignment = .center
//        view.addSubview(distanceView)
//
//        let occupancyFrame = CGRect(x: 0, y: image.size.height + 170, width: view.frame.width, height: 30)
//        let occupancyView = UILabel(frame: occupancyFrame)
//        occupancyView.text = "Occupany: " + String(occupancy)
//        occupancyView.textAlignment = .center
//        view.addSubview(occupancyView)
//
//        let reservationFrame = CGRect(x: 0, y: image.size.height + 190, width: view.frame.width, height: 30)
//        let reservationView = UILabel(frame: reservationFrame)
//        if reservation {
//            reservationView.text = "Reservantion: Required"
//        }
//        else{
//            reservationView.text = "Reservantion: Not Required"
//        }
//        reservationView.textAlignment = .center
//        view.addSubview(reservationView)
//
//        let outletFrame = CGRect(x: 0, y: image.size.height + 210, width: view.frame.width, height: 30)
//        let outletView = UILabel(frame: outletFrame)
//        outletView.text = "Occupany: " + String(outlets)
//        outletView.textAlignment = .center
//        view.addSubview(outletView)
//
//        let ratingsFrame = CGRect(x: 0, y: image.size.height + 250, width: view.frame.width, height: 75)
//        let ratingsView = UIView(frame: ratingsFrame)
//        ratingsView.backgroundColor = .lightGray
//        view.addSubview(ratingsView)
//
//        let reviewsButton: UIButton = {
//            let button = UIButton(type: .system)
//            button.setTitle("Show Reviews", for: .normal)
//            button.addTarget(self, action: #selector(showReviews), for: .touchUpInside)
//            return button
//        }()
//        reviewsButton.frame = CGRect(x: 100, y: image.size.height + 250, width: 200, height: 40)
//        view.addSubview(reviewsButton)
//    }
//
//    @objc func showReviews() {
//        let reviewsVC = ReviewsViewController()
//        reviewsVC.reviewsArray = reviewsArray
//        navigationController?.pushViewController(reviewsVC, animated: true)
//    }
//
//    func calculateStatistics() {
//        let totalReviews = reviewsArray.count
//        let averageRating = reviewsArray.reduce(0, { $0 + $1.rating }) / totalReviews
//
//        let oneStarCount = reviewsArray.filter({ $0.rating == 1 }).count
//        let twoStarCount = reviewsArray.filter({ $0.rating == 2 }).count
//        let threeStarCount = reviewsArray.filter({ $0.rating == 3 }).count
//        let fourStarCount = reviewsArray.filter({ $0.rating == 4 }).count
//        let fiveStarCount = reviewsArray.filter({ $0.rating == 5 }).count
//
//        print("Total Reviews: \(totalReviews)")
//        print("Average Rating: \(averageRating)")
//        print("1 Star Reviews: \(oneStarCount)")
//        print("2 Star Reviews: \(twoStarCount)")
//        print("3 Star Reviews: \(threeStarCount)")
//        print("4 Star Reviews: \(fourStarCount)")
//        print("5 Star Reviews: \(fiveStarCount)")
//
//        updateRatingsFrame(totalReviews: totalReviews, averageRating: averageRating, oneStarCount: oneStarCount, twoStarCount: twoStarCount, threeStarCount: threeStarCount, fourStarCount: fourStarCount, fiveStarCount: fiveStarCount)
//    }
//
//    func updateRatingsFrame(totalReviews: Int, averageRating: Int, oneStarCount: Int, twoStarCount: Int, threeStarCount: Int, fourStarCount: Int, fiveStarCount: Int) {
//        ratingsView.subviews.forEach { $0.removeFromSuperview() }
//
//        let statisticsLabel = UILabel(frame: ratingsView.bounds)
//        statisticsLabel.numberOfLines = 0
//        statisticsLabel.text = """
//            Total Reviews: \(totalReviews)
//            Average Rating: \(averageRating)
//            1 Star Reviews: \(oneStarCount)
//            2 Star Reviews: \(twoStarCount)
//            3 Star Reviews: \(threeStarCount)
//            4 Star Reviews: \(fourStarCount)
//            5 Star Reviews: \(fiveStarCount)
//        """
//        ratingsView.addSubview(statisticsLabel)
//    }
//}
