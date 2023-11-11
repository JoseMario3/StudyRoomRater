//
//  ViewController.swift
//  StudyRoomRater
//
//  Created by user246268 on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    var searchQuery = ""
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // should add API stuff
    }

    @IBAction func searchLocation(_ sender: Any) {
        searchQuery = searchBox.text ?? ""
        print("searchQuery: \(searchQuery)")
        searchQuery = searchQuery.replacingOccurrences(of: " ", with: "%20")
        let searchVC = StudyRoomSearchViewController()
        navigationController?.pushViewController(searchVC, animated: true)
    }
    
}

