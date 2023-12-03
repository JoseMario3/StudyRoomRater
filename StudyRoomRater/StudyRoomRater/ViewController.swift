//
//  ViewController.swift
//  StudyRoomRater
//
//  Created by user246268 on 11/10/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    var searchQuery = ""
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var searchBox: UITextField!
    @IBOutlet var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        SQLiteStructure.shared.checkDB()
        buildings = SQLiteStructure.shared.getBuildings()
        configureMap()
        configureLocationManager()
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
        
        mapView.showsUserLocation = true
        
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
    
    func configureLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
            case .authorizedWhenInUse, .authorizedAlways:
                if CLLocationManager.locationServicesEnabled() {
                    locationManager.startUpdatingLocation()
                }
            case .notDetermined, .restricted, .denied:
                fatalError("Permission not found")
                break
            @unknown default:
                fatalError("Unhandled authorization status")
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            
            //overrides the original map view with user location
            mapView.setRegion(region, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showStudyRooms" {
            if let destinationVC = segue.destination as? StudyRoomsListViewController,
               let buildingName = sender as? String,
               let building = buildings.first(where: { $0.name == buildingName }) {
                destinationVC.rooms = building.rooms
<<<<<<< HEAD
                destinationVC.building = building.name
=======
                destinationVC.buildingname = buildingName
>>>>>>> origin/insertReviews
            }
        } else if segue.identifier == "showAllRooms" {
            if let destinationVC = segue.destination as?
                AllRoomsListViewController {
                destinationVC.buildings = buildings
            }
        }
    }

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        // checks to make sure the annotation isnt the user so a blank pop up doesnt happen
        if let annotation = view.annotation, !(annotation is MKUserLocation) {
            if let buildingName = annotation.title {
                print("User tapped on location: \(buildingName!)")
                performSegue(withIdentifier: "showStudyRooms", sender: buildingName)
            }
        }
        mapView.deselectAnnotation(view.annotation, animated: true)
    }

}
