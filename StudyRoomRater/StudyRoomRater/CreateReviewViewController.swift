//
//  CreateReviewViewController.swift
//  StudyRoomRater
//
//  Created by Lawrence Zhou on 11/14/23.
//

import UIKit

class CreateReviewViewController: UIViewController {

    
    @IBOutlet weak var StarsSelection: UISegmentedControl!
    @IBOutlet weak var CommentText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SubmitReview(_ sender: Any) {
        print((StarsSelection.selectedSegmentIndex + 1))
        print(CommentText.text!)
    }
    
    /*unsure how to update database with this data, but the Stars is specified with
    
     
     
     */
}
