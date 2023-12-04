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
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildingName.text = "Building: \(building)"
    }
    
    @IBAction func tryCreate(){
        
        print("we in the car")
        
        let buildID = SQLiteStructure.shared.getBuildingID(building)
        
        var numC: Int64 = 0
        var numT: Int64 = 0
        var numO: Int64 = 0
        
        if isNumeric(numChairs.text ?? "not a number") {
            numC = Int64((numChairs.text! as NSString).integerValue)
            errorLabel.text = ""
        } else {
            errorLabel.text = "Number of Chairs not Number Value"
            return
        }
        if isNumeric(numTables.text ?? "not a number") {
            numT = Int64((numOutlets.text! as NSString).integerValue)
            errorLabel.text = ""
        } else {
            errorLabel.text = "Number of Tables not Number Value"
            return
        }
        if isNumeric(numOutlets.text ?? "not a number") {
            numO = Int64((numOutlets.text! as NSString).integerValue)
            errorLabel.text = ""
        } else {
            errorLabel.text = "Number of Outlets not Number Value"
            return
        }
        
        //everything should be good now
        let tryRoom = SQLiteStructure.shared.insertRoom(name: roomName.text!, desc: roomDescription.text!, nC: numC, nT: numT, nO: numO, build: buildID)
        
        
        
        if(tryRoom != nil) {
            print("Room has id \(tryRoom) for building with id \(buildID)")
            //navigationController?.popViewController(animated: true)
        } else {
            errorLabel.text = "Something went wrong and we don't know what"
            return
        }
        
    }
    
    func isNumeric(_ input: String) -> Bool {
        let digits = CharacterSet.decimalDigits
        return input.rangeOfCharacter(from: digits.inverted) == nil
    }
    
}
