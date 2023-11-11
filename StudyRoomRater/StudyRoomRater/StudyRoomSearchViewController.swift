//
//  StudyRoomSearchViewController.swift
//  StudyRoomRater
//
//  Created by Wonsang Lee on 11/10/23.
//

import Foundation
import UIKit

class StudyRoomSearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var filtersButton: UIButton!
    var tableView: UITableView!
    var studyRoomName: String! //revise this base on database
    var studyRoomProximity: Int!
    var reviewStars: Int!
    var studyRoomImage: UIImage!
    var studyRoomData: [StudyRoom] = []
    var imageCache: [UIImage] = []
    
    struct StudyRoom: Decodable {
        let id: Int!
        let name: String!
        let outlets: Int!
        let occupants: Int!
        let location: String!
        let description: String!
        let buildingId: Int!
        let roomNumber: Int!
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell") as! StudyRoomSearchViewCell
        cell.studyRoomLabel.text = studyRoomName + " (" + String(studyRoomProximity) + " min)"
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
        cell.studyRoomImageView.image = studyRoomImage
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let studyRoomVC = StudyRoomViewController()
        //for item in studyRoomData {//revise this
            studyRoomVC.name = studyRoomName
            
        //}
        
        navigationController?.pushViewController(studyRoomVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Search Results:"
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
    }
    @IBAction func filtersClicked(_ sender: Any) {
        let filtersVC = FiltersViewController()
        navigationController?.pushViewController(filtersVC, animated: true)
        
    }
}
