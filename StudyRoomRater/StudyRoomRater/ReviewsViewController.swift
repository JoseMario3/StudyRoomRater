//
//  ReviewsViewController.swift
//  StudyRoomRater
//
//  Created by Wonsang Lee on 11/10/23.
//

import Foundation
import UIKit

class ReviewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var tableView: UITableView!
    var reviewStars: Int!
    var reviewUsername: String!
    var review: String!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell") as! ReviewViewCell
        cell.usernameLabel.text = reviewUsername
        if reviewStars == 5 {
            
        }
        else if reviewStars == 4 {
            
        }
        else if reviewStars == 3{
            
        }
        else if reviewStars == 2{
            
        }
        else if reviewStars == 1{
            
        }
        cell.reviewLabel.text = review
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Reviews:"
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
    }
}
