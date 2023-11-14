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
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
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
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
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
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudyRoom(
                    name: "Room 102",
                    description: "s;adfhas;lkdfj;laksd",
                    numberOfChairs: 10,
                    numberOfTables: 4,
                    numberOfOutlets: 6,
                    reviews: [
                        Review(rating: 5, comment: "good room", username: "Username1"),
                        Review(rating: 1, comment: "bad room", username: "username2"),
                        Review(rating: 3, comment: "mid room", username: "username3")
                    ]
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
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numberOfChairs: 10,
                numberOfTables: 4,
                numberOfOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
        ]
    )
]
