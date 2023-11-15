//
//  ReviewsViewController.swift
//  StudyRoomRater
//
//  Created by Wonsang Lee on 11/10/23.
//

import Foundation
import UIKit

class ReviewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var reviewsArray:[Review] = []

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviewsArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
        let review = reviewsArray[indexPath.row]
        let usernameLabel = UITextView()
        usernameLabel.frame = CGRect(x: 10, y: 0, width: 100, height: 25)
        usernameLabel.text = review.username
        usernameLabel.textColor = .blue
        cell.contentView.addSubview(usernameLabel)
        let reviewLabel = UITextView()
        reviewLabel.frame = CGRect(x: 100, y: 0, width: 1000, height: 50)
        reviewLabel.text = review.comment
        cell.contentView.addSubview(reviewLabel)

        for i in 0..<5 {
            let starImageView = UIImageView()
            starImageView.frame = CGRect(x: i * 20, y: 20, width: 20, height: 25)
            starImageView.contentMode = .scaleAspectFit

            if i < review.rating {
                starImageView.image = UIImage(systemName: "star.fill")
            } else {
                starImageView.image = UIImage(systemName: "star")
            }

            cell.contentView.addSubview(starImageView)
        }
        return cell
    }
    
    init(reviewsArray: [Review]) {
            super.init(nibName: nil, bundle: nil)
            self.reviewsArray = reviewsArray
        }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        print(reviewsArray)
    }
}
