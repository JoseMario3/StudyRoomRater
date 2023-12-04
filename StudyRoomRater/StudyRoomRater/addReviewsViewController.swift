//
//  ReviewsViewController.swift
//  StudyRoomRater
//
//  Created by Lawrence Zhou on 11/10/23.
//

import Foundation
import UIKit

class addReviewsViewController: UIViewController{
    
    var roomname = ""
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Comment: UITextField!
    @IBOutlet weak var Score: UISegmentedControl!
    let sqliteStructure = SQLiteStructure.shared
    override func viewDidLoad() {
        Username.text = ""
        Comment.text = ""
        Score.selectedSegmentIndex = 4;
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
           view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func addReview(_ sender: Any) {
        let roomid = sqliteStructure.getRoomID(roomname)
        sqliteStructure.insertReview(rate: Int64(Score.selectedSegmentIndex+1), comment: Comment.text ?? "Empty", user: Username.text ?? "Anonymous", room: roomid)
        
        buildings = SQLiteStructure.shared.getBuildings()
        
    }
    
}
