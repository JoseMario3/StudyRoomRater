//
//  Models.swift
//  StudyRoomRater
//
//  Created by Joseph Lanfersieck on 11/13/23.
//

import Foundation
import MapKit

struct StudyRoom {
    var name: String
    var description: String
    var numberOfChairs: Int
    var numberOfTables: Int
    var numberOfOutlets: Int
    var reviews: [Review]
}

struct Building {
    var name: String
    var coordinate: CLLocationCoordinate2D
    var rooms: [StudyRoom]
}

struct Review {
    var rating: Int
    var comment: String
    var username: String
}
