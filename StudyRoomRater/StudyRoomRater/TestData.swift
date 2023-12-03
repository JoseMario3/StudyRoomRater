//
//  TestData.swift
//  StudySpaceRater
//
//  Created by Joseph Lanfersieck on 11/13/23.
//

import Foundation
import MapKit

//this is the actual data that will get done by sqlite
var buildings: [Building] = []

var testbuildings = [
    Building(
        name: "Lopata",
        coordinate: CLLocationCoordinate2D(latitude: 38.64936079825949, longitude: -90.30596571869171),
        rooms: [
            StudySpace(
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
            ), StudySpace(
                name: "Room 215",
                description: "",
                numChairs: 15,
                numTables: 7,
                numOutlets: 22,
                reviews: []
            ), StudySpace(
                name: "Math Help Room",
                description: "Math TA's usually host office hours here",
                numChairs: 14,
                numTables: 7,
                numOutlets: 13,
                reviews: []
            )
        ]
    ),
    Building(
        name: "Hillman",
        coordinate: CLLocationCoordinate2D(latitude: 38.646951534817234, longitude: -90.30477804492584),
        rooms: [
            StudySpace(
                name: "Important Meeting Area",
                description: "me when I am an important Meeting area ^",
                numChairs: 79,
                numTables: 18,
                numOutlets: 32,
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
            StudySpace(
               name: "Whisper's Cafe",
               description: "Math TA's usually host office hours here",
               numChairs: 132,
               numTables: 57,
               numOutlets: 146,
               reviews: []
           ), StudySpace(
            name: "Ground Floor",
            description: "",
            numChairs: 144,
            numTables: 44,
            numOutlets: 99,
            reviews: []
           ), StudySpace(
            name: "Ground Floor Study Pods",
            description: "Every study pods has a chair, table, and two outlets",
            numChairs: 77,
            numTables: 77,
            numOutlets: 154,
            reviews: []
           ), StudySpace(
            name: "Ground Floor Printing Area",
            description: "Every study pod in the printing area has a chair, table, and one outlets",
            numChairs: 36,
            numTables: 36,
            numOutlets: 36,
            reviews: []
           ),
            StudySpace(
                name: "Map Room",
                description: "im da map im da map im da map im da map im da map",
                numChairs: 49,
                numTables: 10,
                numOutlets: 24,
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
            StudySpace(
                name: "First Floor Lobby",
                description: "",
                numChairs: 38,
                numTables: 16,
                numOutlets: 12,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ), StudySpace(
                name: "Room 316",
                description: "Where the Magic Happens",
                numChairs: 34,
                numTables: 20,
                numOutlets: 60,
                reviews: []
            ),
        ]
    ),
    Building(
        name: "The Bear's Den",
        coordinate: CLLocationCoordinate2D(latitude: 38.64499917414645, longitude: -90.31311365469102),
        rooms: [
            StudySpace(
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
            StudySpace(
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
            StudySpace(
                name: "Tisch Commons",
                description: "",
                numChairs: 142,
                numTables: 46,
                numOutlets: 22,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),
            StudySpace(
                name: "Dain's Dining Hall",
                description: "",
                numChairs: 151,
                numTables: 40,
                numOutlets: 28,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 5, comment: "bad room", username: "username2"),
                    Review(rating: 5, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ), StudySpace(
                name: "Cafe Bergson",
                description: "",
                numChairs: 40,
                numTables: 10,
                numOutlets: 18,
                reviews: []
            ), StudySpace(
                name: "Floor 2 Seating",
                description: "",
                numChairs: 31,
                numTables: 16,
                numOutlets: 10,
                reviews: []
            ), StudySpace(
                name: "Goldberg Lounge",
                description: "",
                numChairs: 26,
                numTables: 8,
                numOutlets: 8,
                reviews: []
            ), StudySpace(
                name: "Bar Area",
                description: "",
                numChairs: 31,
                numTables: 10,
                numOutlets: 24,
                reviews: []
            ), StudySpace(
                name: "Chalkboard Room",
                description: "",
                numChairs: 31,
                numTables: 10,
                numOutlets: 24,
                reviews: []
            ), StudySpace(
                name: "DUC Courtyard",
                description: "",
                numChairs: 87,
                numTables: 20,
                numOutlets: 4,
                reviews: []
            ), StudySpace(
                name: "Ibby's Courtyard",
                description: "",
                numChairs: 41,
                numTables: 20,
                numOutlets: 0,
                reviews: []
            )
        ]
    ),
    Building(
        name: "McKelvey",
        coordinate: CLLocationCoordinate2D(latitude: 38.64824789710751, longitude: -90.30159257343941),
        rooms: [
            StudySpace(
                name: "First Floor Study",
                description: "we got windows",
                numChairs: 33,
                numTables: 16,
                numOutlets: 24,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ), StudySpace(
                name: "Second Floor Study",
                description: "",
                numChairs: 23,
                numTables: 10,
                numOutlets: 14,
                reviews: []
            ), StudySpace(
                name: "Third Floor Study",
                description: "",
                numChairs: 15,
                numTables: 7,
                numOutlets: 8,
                reviews: []
            ),
        ]
    ),
    Building(
        name: "Wrighton",
        coordinate: CLLocationCoordinate2D(latitude: 38.649404337574964, longitude: -90.30914393665974),
        rooms: [
            StudySpace(
                name: "First Floor Lobby",
                description: "Small but powerful",
                numChairs: 17,
                numTables: 4,
                numOutlets: 20,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ), StudySpace(
                name: "Student Resource Room",
                description: "",
                numChairs: 58,
                numTables: 20,
                numOutlets: 20,
                reviews: []
            ),
        ]
    ),
    Building(
        name: "Bauer",
        coordinate: CLLocationCoordinate2D(latitude: 38.64961722059663, longitude: -90.31085660595483),
        rooms: [
            StudySpace(
                name: "First Floor Lobby",
                description: "Da Main Hub of Bauer",
                numChairs: 181,
                numTables: 51,
                numOutlets: 20,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),  StudySpace(
                name: "Bauer Courtyard",
                description: "",
                numChairs: 45,
                numTables: 16,
                numOutlets: 4,
                reviews: []
            ), StudySpace(
                name: "Room 102",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 129",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 15,
                reviews: []
            ), StudySpace(
                name: "Room 151",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 152",
                description: "",
                numChairs: 3,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 153",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 185",
                description: "",
                numChairs: 9,
                numTables: 2,
                numOutlets: 20,
                reviews: []
            ), StudySpace(
                name: "Room 191",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 10,
                reviews: []
            ), StudySpace(
                name: "Room 192",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 10,
                reviews: []
            ), StudySpace(
                name: "Room 193",
                description: "",
                numChairs: 8,
                numTables: 2,
                numOutlets: 18,
                reviews: []
            ), StudySpace(
                name: "Room 202",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 212",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 223",
                description: "",
                numChairs: 6,
                numTables: 1,
                numOutlets: 18,
                reviews: []
            ), StudySpace(
                name: "Room 235",
                description: "",
                numChairs: 6,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ), StudySpace(
                name: "Room 239",
                description: "",
                numChairs: 6,
                numTables: 1,
                numOutlets: 9,
                reviews: []
            ),  StudySpace(
                name: "Room 241",
                description: "",
                numChairs: 6,
                numTables: 1,
                numOutlets: 15,
                reviews: []
            ), StudySpace(
                name: "Room 242",
                description: "",
                numChairs: 5,
                numTables: 1,
                numOutlets: 8,
                reviews: []
            ), StudySpace(
                name: "Room 291",
                description: "",
                numChairs: 10,
                numTables: 2,
                numOutlets: 18,
                reviews: []
            ), StudySpace(
                name: "Room 292",
                description: "",
                numChairs: 9,
                numTables: 2,
                numOutlets: 18,
                reviews: []
            ), StudySpace(
                name: "Room 293",
                description: "",
                numChairs: 9,
                numTables: 2,
                numOutlets: 18,
                reviews: []
            ),
        ]
    ),
    Building(
        name: "Law Building",
        coordinate: CLLocationCoordinate2D(latitude: 38.649708470964555, longitude: -90.31206966151832),
        rooms: [
            StudySpace(
                name: "Law Cafe",
                description: "It's a cafe, for the LAW",
                numChairs: 172,
                numTables: 54,
                numOutlets: 100,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ),  StudySpace(
                name: "Law Cafe (Back Area)",
                description: "",
                numChairs: 53,
                numTables: 14,
                numOutlets: 50,
                reviews: []
            ), StudySpace(
                name: "Room 302A",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 6,
                reviews: []
            ), StudySpace(
                name: "Room 302B",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 6,
                reviews: []
            ), StudySpace(
                name: "Room 302C",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 6,
                reviews: []
            ), StudySpace(
                name: "Room 302D",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 6,
                reviews: []
            ), StudySpace(
                name: "Room 302E",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 6,
                reviews: []
            ), StudySpace(
                name: "Room 302F",
                description: "",
                numChairs: 4,
                numTables: 1,
                numOutlets: 6,
                reviews: []
            ),
        ]
    ),
    Building(
        name: "Simon",
        coordinate: CLLocationCoordinate2D(latitude: 38.6481466010008, longitude: -90.31113970659347),
        rooms: [
            StudySpace(
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
            ), StudySpace(
                name: "Basement Left Wing",
                description: "",
                numChairs: 13,
                numTables: 6,
                numOutlets: 15,
                reviews: []
            ),  StudySpace(
                name: "Simon Courtyard",
                description: "",
                numChairs: 41,
                numTables: 11,
                numOutlets: 0,
                reviews: []
            ),
        ]
    ), Building(
        name: "Seigle",
        coordinate: CLLocationCoordinate2D(latitude: 38.64893233715199, longitude: -90.31255586071605),
        rooms: [
            StudySpace(
                name: "Basement Seating",
                description: "",
                numChairs: 8,
                numTables: 7,
                numOutlets: 4,
                reviews: [
                    Review(rating: 5, comment: "good room", username: "Username1"),
                    Review(rating: 1, comment: "bad room", username: "username2"),
                    Review(rating: 3, comment: "mid room", username: "username3")
                ]
            ), StudySpace(
                name: "Green Seminar Room 111",
                description: "",
                numChairs: 27,
                numTables: 14,
                numOutlets: 18,
                reviews: []
            ), StudySpace(
                name: "2nd Floor Center Seating",
                description: "",
                numChairs: 8,
                numTables: 7,
                numOutlets: 8,
                reviews: []
            ),  StudySpace(
                name: "3rd Floor Center Seating",
                description: "",
                numChairs: 8,
                numTables: 3,
                numOutlets: 8,
                reviews: []
            ),
        ]
    ), Building (
        name: "Mallinckrodt",
        coordinate: CLLocationCoordinate2D(latitude: 38.647426281412976, longitude: -90.30971676072923),
        rooms: [
            StudySpace (
                name: "Lower Floor Study",
                description: "",
                numChairs: 32,
                numTables: 14,
                numOutlets: 8,
                reviews: []
            ), StudySpace (
                name: "Second Floor Study",
                description: "",
                numChairs: 24,
                numTables: 7,
                numOutlets: 15,
                reviews: []
            ), StudySpace (
                name: "Mallinkrodt Courtyard",
                description: "",
                numChairs: 35,
                numTables: 36,
                numOutlets: 0,
                reviews: []
            ), StudySpace (
                name: "Subway Outdoor Seating",
                description: "",
                numChairs: 44,
                numTables: 12,
                numOutlets: 6,
                reviews: []
            ),
        ]
    ), Building (
        name: "Rebstock",
        coordinate: CLLocationCoordinate2D(latitude: 38.647670509363934, longitude: -90.30801757421443),
        rooms: [
            StudySpace (
                name: "Life Sciences Library",
                description: "",
                numChairs: 29,
                numTables: 10,
                numOutlets: 15,
                reviews: []
            ), StudySpace (
                name: "1st Floor Right Wing",
                description: "",
                numChairs: 9,
                numTables: 3,
                numOutlets: 0,
                reviews: []
            ), StudySpace (
                name: "2nd Floor Right Wing",
                description: "",
                numChairs: 6,
                numTables: 3,
                numOutlets: 0,
                reviews: []
            ),
        ]
    ), Building (
        name: "Steinberg",
        coordinate: CLLocationCoordinate2D(latitude: 38.64659769399145, longitude: -90.30268432042396),
        rooms: [
            StudySpace (
                name: "Etta's Market",
                description: "",
                numChairs: 22,
                numTables: 10,
                numOutlets: 4,
                reviews: []
            ),
        ]
    )
]
