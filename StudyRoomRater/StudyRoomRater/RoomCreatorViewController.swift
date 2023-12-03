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
    @IBOutlet weak var roomName: UITextField!
    @IBOutlet weak var numChairs: UITextField!
    @IBOutlet weak var numTables: UITextField!
    @IBOutlet weak var numOutlets: UITextField!
    @IBOutlet weak var roomDescription: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildingName.text = "Building: \(building)"
    }
    
    @IBAction func addChairs() {
        if let input = numChairs.text {
            if !isNumeric(input) {
                numChairs.text = ""
            }
        }
    }
    
    @IBAction func addTables() {
        
    }
    
    @IBAction func addOutlets() {
        
    }
    
    func isNumeric(_ input: String) -> Bool {
        let digits = CharacterSet.decimalDigits
        return input.rangeOfCharacter(from: digits.inverted) == nil
    }
    
}
