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

    override func viewDidLoad() {
        super.viewDidLoad()

        if let room = room {
            nameLabel.text = room.name
            descriptionLabel.text = room.description
            chairsLabel.text = "Chairs: \(room.numberOfChairs)"
            tablesLabel.text = "Tables: \(room.numberOfTables)"
            outletsLabel.text = "Outlets: \(room.numberOfOutlets)"
        }
    }
}
