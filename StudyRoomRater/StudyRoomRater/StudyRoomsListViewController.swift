//
//  StudyRoomsListViewController.swift
//  StudyRoomRater
//
//  Created by Joseph Lanfersieck on 11/13/23.
//

import UIKit

class StudyRoomsListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var buildingname = ""
    var rooms: [StudySpace] = []
    var building: String = ""

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell", for: indexPath)
        
        let room = rooms[indexPath.row]
        //cell.textLabel?.text = room.name
        //cell.detailTextLabel?.text = "Chairs: \(room.numChairs)"
        let roomLabel = UILabel()
        roomLabel.frame = CGRect(x: 10, y: 0, width: 250, height: 25)
        roomLabel.text = room.name
        roomLabel.textColor = .blue
        cell.contentView.addSubview(roomLabel)
        
        let totalReviews = room.reviews.count
        if totalReviews > 0 {
            var totalRating = 0
            for review in room.reviews {
                totalRating += Int(review.rating)
            }
            let averageReview = (Double(totalRating) / Double(totalReviews))
            for i in 0..<5 {
                let starImageView = UIImageView()
                let xpos = i * 20 + 10
                let star = Double(i) + 1
                let halfStar = Double(i) + 0.5
                starImageView.frame = CGRect(x: xpos, y: 20, width: 20, height: 25)
                starImageView.contentMode = .scaleAspectFit
                if star <= averageReview {
                    starImageView.image = UIImage(systemName: "star.fill")
                }
                else if halfStar <= averageReview {
                    starImageView.image = UIImage(systemName: "star.lefthalf.fill")
                }
                else {
                    starImageView.image = UIImage(systemName: "star")
                }

                cell.contentView.addSubview(starImageView)
            }
            
        }
        else {
            for i in 0..<5 {
                let starImageView = UIImageView()
                let xpos = i * 20 + 10
                starImageView.frame = CGRect(x: xpos, y: 20, width: 20, height: 25)
                starImageView.contentMode = .scaleAspectFit
                    starImageView.image = UIImage(systemName: "star")
                cell.contentView.addSubview(starImageView)
            }
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRoomDetails",
           let destinationVC = segue.destination as? RoomDetailViewController,
           let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let building = buildings.first(where: { $0.name == buildingname })
            let selectedRoom = building?.rooms[indexPath.row]
            destinationVC.room = selectedRoom
            destinationVC.buildingname = buildingname;
        }
        if segue.identifier == "createNewRoom" {
            if let destinationVC = segue.destination as? RoomCreatorViewController {
                destinationVC.building = buildingname
            }
        }
    }
}
