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
    var numberOfChairs: Int64
    var numberOfTables: Int64
    var numberOfOutlets: Int64
    var reviews: [Review]
}

struct Building {
    var name: String
    var coordinate: CLLocationCoordinate2D
    var rooms: [StudyRoom]
}

struct Review {
    var rating: Int64
    var comment: String
    var username: String
}
