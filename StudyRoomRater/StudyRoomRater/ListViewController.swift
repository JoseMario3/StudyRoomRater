//
//  ListViewController.swift
//  StudyRoomRater
//
//  Created by Jose Folgar on 11/14/23.
//

import Foundation
import UIKit

class AllRoomsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    var buildings: [Building] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buildings.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showStudyRooms" {
            if let destinationVC = segue.destination as? StudyRoomsListViewController,
               let buildingName = sender as? String,
               let building = buildings.first(where: { $0.name == buildingName }) {
                destinationVC.rooms = building.rooms
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BuildingCell", for: indexPath)
        let building = buildings[indexPath.row]
        cell.textLabel?.text = building.name
        return cell
    }
}
