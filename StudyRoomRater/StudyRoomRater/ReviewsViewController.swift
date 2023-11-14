////
////  ReviewsViewController.swift
////  StudyRoomRater
////
////  Created by Wonsang Lee on 11/10/23.
////
//
//import Foundation
//import UIKit
//
//class ReviewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
//    var tableView: UITableView!
//    var reviewsArray:[Review] = []
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 0
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell") as! ReviewViewCell
//
//        cell.usernameLabel.text = "Username: \(review.username)"
//        cell.reviewLabel.text = review.comment
//
//        for i in 0..<5 {
//            let starImageView = UIImageView()
//            starImageView.frame = CGRect(x: i * 20, y: 0, width: 20, height: 20)
//            starImageView.contentMode = .scaleAspectFit
//
//            if i < review.rating {
//                starImageView.image = UIImage(systemName: "star.fill")
//            } else {
//                starImageView.image = UIImage(systemName: "star")
//            }
//
//            cell.contentView.addSubview(starImageView)
//        }
//        return cell
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        navigationItem.title = "Reviews:"
//        tableView = UITableView()
//        tableView.delegate = self
//        tableView.dataSource = self
//        view.addSubview(tableView)
//        tableView.frame = view.bounds
//    }
//}
