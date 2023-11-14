//
//  SQLiteStructure.swift
//  StudyRoomRater
//
//  Created by McKelvey Student on 11/14/23.
//

import Foundation
import SQLite

class SQLiteStructure {
    static let dbName = "StudyRoomDB"
    static let pathName = "study.sqlite3"
    
    //everything is private for memory saving; all these variables are just used to set up the db
    
    //table structure for rooms
    private let rooms = Table("rooms")
    private let roomid = Expression<Int64>("id")
    private let rname = Expression<String>("name")
    private let description = Expression<String>("description")
    private let building = Expression<String>("building")
    private let numChairs = Expression<Int64>("numChairs")
    private let numTables = Expression<Int64>("numTables")
    private let numOutlets = Expression<Int64>("numOutlets")
    
    //table structure for buildings
    private let buildings = Table("buildings")
    private let bid = Expression<Int64>("id")
    private let bname = Expression<String>("name")
    private let longitude = Expression<Float>("longitude")
    private let latitude = Expression<Float>("latitude")
    
    //table structure for reviews
    private let reviews = Table("reviews")
    private let revid = Expression<Int64>("id")
    private let rating = Expression<Int64>("rating")
    private let comment = Expression<String>("comment")
    private let username = Expression<String>("user")
    private let forRoom = Expression<Int64>("roomid")
    
    static let shared = SQLiteStructure()
    private var db: Connection? = nil
    
    //just connecting to the db
    private init(){
        print("Singleton")
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let dirPath = dir.appendingPathComponent(Self.dbName)
            
            do {
                            try FileManager.default.createDirectory(atPath: dirPath.path, withIntermediateDirectories: true, attributes: nil)
                            let dbPath = dirPath.appendingPathComponent(Self.pathName).path
                            db = try Connection(dbPath)
                            createTables()
                            print("Successful connection at: \(dbPath) ")
                        } catch {
                            db = nil
                            print("init error: \(error)")
                        }
        } else {
            db = nil
        }
    }
    
    //Create the tables themselves
    private func createTables(){
        guard let database = db else {return}
        
        do{
            try database.run(rooms.create { table in
                table.column(roomid, primaryKey: .autoincrement)
                table.column(rname)
                table.column(description)
                table.column(numChairs)
                table.column(numTables)
                table.column(numOutlets)
                table.column(building)
            })
            print("Rooms Table Created")
            
            try database.run(buildings.create { table in
                table.column(bid, primaryKey: .autoincrement)
                table.column(rname)
                table.column(description)
                table.column(numChairs)
            })
            print("Buildings Table Created")
            
            try database.run(reviews.create { table in
                table.column(revid, primaryKey: .autoincrement)
                table.column(rating)
                table.column(comment)
                table.column(username)
                table.column(forRoom)
            })
            print("Reviews Table Created")
        } catch {
            print("table error: \(error)")
        }
    }
    
    //insert a review (not private, needs to be runnable elsewhere)
    func insertReview(rate: Int64, comment: String, user: String, room: Int64) -> Int64?{
        guard let database = db else { return nil }
        
        let insert = reviews.insert(self.rating<-rate, //big statement thats just all the necessary bits
                                    self.comment<-comment,
                                    self.username<-user,
                                    self.forRoom<-room)
        
        do{ //the actual insert
            let rowID = try database.run(insert)
            return rowID
        } catch {
            print ("insert review error: \(error)")
            return nil
        }
    }
}
