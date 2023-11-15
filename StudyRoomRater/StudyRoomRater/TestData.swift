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
        coordinate: CLLocationCoordinate2D(latitude: 38.64936079825949, longitude: -90.30596571869171),
        rooms: [
            StudyRoom(
                name: "Stanley's Sushi",
                description: "sushi sushi sushi sushi",
                numChairs: 113,
                numTables: 55,
                numOutlets: 12,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 4, comment: "asnjdfonsadjkflnsjaklgnwerjkalgf newavijowariugoewrnafopewanfiopewnafiopewangiopransfkoepanrfojsapngjor ew fjhewoi fjewioa fjewipo fjewiop fjewio pewj", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Hillman",
        coordinate: CLLocationCoordinate2D(latitude: 38.646951534817234, longitude: -90.30477804492584),
        rooms: [
            StudyRoom(
                name: "Important Meeting Area",
                description: "me when I am an important Meeting area ^",
                numChairs: 79,
                numTables: 18,
                numOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Olin Library",
        coordinate: CLLocationCoordinate2D(latitude: 38.648487006627036, longitude: -90.30766288508758),
        rooms: [
            StudyRoom(
                name: "Map Room",
                description: "im da map im da map im da map im da map im da map",
                numChairs: 49,
                numTables: 10,
                numOutlets: 13,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Whitaker",
        coordinate: CLLocationCoordinate2D(latitude: 38.64912719638861, longitude: -90.30310990464798),
        rooms: [
            StudyRoom(
                name: "Room 101",
                description: "s;adfhas;lkdfj;laksd",
                numChairs: 10,
                numTables: 4,
                numOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "The Bear's Den",
        coordinate: CLLocationCoordinate2D(latitude: 38.64499917414645, longitude: -90.31311365469102),
        rooms: [
            StudyRoom(
                name: "Dining Area",
                description: "BEAR'S DEN RAWR",
                numChairs: 398,
                numTables: 102,
                numOutlets: 80,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudyRoom(
                name: "Risa Commons",
                description: "Commoners.",
                numChairs: 208,
                numTables: 36,
                numOutlets: 20,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
        ]
    ),
    Building(
        name: "The DUC",
        coordinate: CLLocationCoordinate2D(latitude: 38.64778, longitude: -90.31048),
        rooms: [
            StudyRoom(
                name: "Room 101",
                description: "s;adfhas;lkdfj;laksd",
                numChairs: 10,
                numTables: 4,
                numOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudyRoom(
                name: "Room 102",
                description: "s;adfhas;lkdfj;laksd",
                numChairs: 10,
                numTables: 4,
                numOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 5, comment: "bad room", username: "username2"),
                    Review(rating: 5, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
        ]
    ),
    Building(
        name: "McKelvey",
        coordinate: CLLocationCoordinate2D(latitude: 38.64824789710751, longitude: -90.30159257343941),
        rooms: [
            StudyRoom(
                name: "First Floor Study",
                description: "we got windows",
                numChairs: 33,
                numTables: 16,
                numOutlets: 6,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Wrighton",
        coordinate: CLLocationCoordinate2D(latitude: 38.649404337574964, longitude: -90.30914393665974),
        rooms: [
            StudyRoom(
                name: "First Floor Study",
                description: "Small but powerful",
                numChairs: 17,
                numTables: 4,
                numOutlets: 8,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Bauer",
        coordinate: CLLocationCoordinate2D(latitude: 38.64961722059663, longitude: -90.31085660595483),
        rooms: [
            StudyRoom(
                name: "First Floor",
                description: "Da Main Hub of Bauer",
                numChairs: 181,
                numTables: 51,
                numOutlets: 18,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Law Building",
        coordinate: CLLocationCoordinate2D(latitude: 38.649708470964555, longitude: -90.31206966151832),
        rooms: [
            StudyRoom(
                name: "Law Cafe",
                description: "It's a cafe, for the LAW",
                numChairs: 172,
                numTables: 54,
                numOutlets: 30,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    ),
    Building(
        name: "Simon",
        coordinate: CLLocationCoordinate2D(latitude: 38.6481466010008, longitude: -90.31113970659347),
        rooms: [
            StudyRoom(
                name: "BSBA Student Lounge",
                description: "It's a lounge for students",
                numChairs: 45,
                numTables: 12,
                numOutlets: 17,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            )
        ]
    )
]
