//
//  TestData.swift
//  StudyRoomRater
//
//  Created by Joseph Lanfersieck on 11/13/23.
//

import Foundation
import MapKit

//totally made up the rooms here
var buildings = [
    Building(
        name: "Lopata",
        coordinate: CLLocationCoordinate2D(latitude: 38.64937, longitude: -90.30609),
        rooms: [
            StudyRoom(
                name: "Room 101",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
        ]
    ),
    Building(
        name: "Hillman",
        coordinate: CLLocationCoordinate2D(latitude: 38.64685, longitude: -90.30489),
        rooms: [
            StudyRoom(
                name: "Room 101",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
        ]
    ),
    Building(
        name: "Olin Library",
        coordinate: CLLocationCoordinate2D(latitude: 38.64856, longitude: -90.30773),
        rooms: [
            StudyRoom(
                name: "Room 101",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
            StudyRoom(
                    name: "Room 102",
                    description: "s;adfhas;lkdfj;laksd",
                    numberOfChairs: 10,
                    numberOfTables: 4,
                    numberOfOutlets: 6
                ),          ]
    ),
    Building(
        name: "The DUC",
        coordinate: CLLocationCoordinate2D(latitude: 38.64778, longitude: -90.31048),
        rooms: [
            StudyRoom(
                name: "Room 101",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6
            ),
        ]
    )
]
