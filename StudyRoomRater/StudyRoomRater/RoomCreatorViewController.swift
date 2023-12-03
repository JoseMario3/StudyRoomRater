//
//  RoomCreatorViewController.swift
//  StudyRoomRater
//
//  Created by Jose Folgar on 12/2/23.
//

import Foundation
import UIKit

class RoomCreatorViewController: UIViewController {
    var building: String = ""
    @IBOutlet weak var buildingName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildingName.text = "Building: \(building)"
    }
    
    
}
