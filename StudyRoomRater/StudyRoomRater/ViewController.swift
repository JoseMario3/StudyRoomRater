//
//  ViewController.swift
//  StudyRoomRater
//
//  Created by user246268 on 11/10/23.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    var searchQuery = ""
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchBox: UITextField!
    
    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        SQLiteStructure.shared.checkDB()
        buildings = SQLiteStructure.shared.getBuildings()
        configureMap()
    }

//    @IBAction func searchLocation(_ sender: Any) {
//        searchQuery = searchBox.text ?? ""
//        print("searchQuery: \(searchQuery)")
//        searchQuery = searchQuery.replacingOccurrences(of: " ", with: "%20")
//        let searchVC = StudyRoomSearchViewController()
//        navigationController?.pushViewController(searchVC, animated: true)
//    }


    func configureMap() {
        //set initial location to WashU
        let initialLocation = CLLocationCoordinate2D(latitude: 38.64854, longitude: -90.30857)
        mapView.setCenter(initialLocation, animated: true)

        let region = MKCoordinateRegion(center: initialLocation, latitudinalMeters: 600, longitudinalMeters: 600)
        mapView.setRegion(region, animated: true)
        
        // Exclude all POI except for our pin points
        mapView.pointOfInterestFilter = .excludingAll
        
        addCustomPinpoints()
    }
    
    func addCustomPinpoints() {
        for building in buildings {
            let buildingAnnotation = MKPointAnnotation()
            buildingAnnotation.title = building.name
            buildingAnnotation.coordinate = building.coordinate
            mapView.addAnnotation(buildingAnnotation)
        }
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

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let buildingName = view.annotation?.title {
            print("User tapped on location: \(buildingName!)")
            performSegue(withIdentifier: "showStudyRooms", sender: buildingName)
        }
    }

    
    
    
}

