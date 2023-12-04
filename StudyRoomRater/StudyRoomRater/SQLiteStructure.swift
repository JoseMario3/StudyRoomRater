//
//  SQLiteStructure.swift
//  StudyRoomRater
//
//  Created by Jefferson Koonce on 11/14/23.
//

import Foundation
import SQLite
import MapKit

class SQLiteStructure {
    static let dbName = "StudyRoomDB"
    static let pathName = "study.sqlite3"
    
    //everything is private for memory saving; all these variables are just used to set up the db
    
    //table structure for rooms
    private let rooms = Table("rooms")
    private let roomid = Expression<Int64>("id")
    private let rname = Expression<String>("name")
    private let description = Expression<String>("description")
    private let building = Expression<Int64>("buildid")
    private let numChairs = Expression<Int64>("numChairs")
    private let numTables = Expression<Int64>("numTables")
    private let numOutlets = Expression<Int64>("numOutlets")
    
    //table structure for buildings
    private let buildings = Table("buildings")
    private let bid = Expression<Int64>("id")
    private let bname = Expression<String>("name")
    private let longitude = Expression<Double>("longitude")
    private let latitude = Expression<Double>("latitude")
    
    //table structure for reviews
    private let reviews = Table("reviews")
    private let revid = Expression<Int64>("id")
    private let rating = Expression<Int64>("rating")
    private let comment = Expression<String>("comment")
    private let username = Expression<String>("user")
    private let forRoom = Expression<Int64>("roomid")
    
    //table structure for room images
    private let images = Table("images")
    private let imageId = Expression<Int64>("id")
    private let base64Image = Expression<String>("base64_image")
    private let associatedRoomId = Expression<Int64>("room_id")
      
    
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
            try database.run(rooms.create(ifNotExists: true) { table in
                table.column(roomid, primaryKey: .autoincrement)
                table.column(rname)
                table.column(description)
                table.column(numChairs)
                table.column(numTables)
                table.column(numOutlets)
                table.column(building)
            })
            print("Rooms Table Created")
            
            try database.run(buildings.create(ifNotExists: true) { table in
                table.column(bid, primaryKey: .autoincrement)
                table.column(bname)
                table.column(latitude)
                table.column(longitude)
            })
            print("Buildings Table Created")
            
            try database.run(reviews.create(ifNotExists: true) { table in
                table.column(revid, primaryKey: .autoincrement)
                table.column(rating)
                table.column(comment)
                table.column(username)
                table.column(forRoom)
            })
            print("Reviews Table Created")
            
            try database.run(images.create(ifNotExists: true) { table in
                table.column(imageId, primaryKey: .autoincrement)
                table.column(base64Image)
                table.column(associatedRoomId)
            })
            print("Room Images Table Created")
        } catch {
            print("table error: \(error)")
        }
    }


    
    //insert a building
    func insertBuilding(name: String, lat: Double, long: Double) -> Int64?{
        guard let database = db else { return nil }
        
        let insert = buildings.insert(self.bname<-name,
                                      self.latitude<-lat,
                                      self.longitude<-long)
        
        do{ //the actual insert
            let rowID = try database.run(insert)
            return rowID
        } catch {
            print ("insert review error: \(error)")
            return nil
        }
    }
    
    //insert a study room
    func insertRoom(name: String, desc: String, nC: Int64, nT: Int64, nO: Int64, build: Int64) -> Int64? {
        guard let database = db else { return nil }
        
        let insert = rooms.insert(self.rname <- name,
                                  self.description <- desc,
                                  self.numChairs <- nC,
                                  self.numTables <- nT,
                                  self.numOutlets <- nO,
                                  self.building <- build)

        do {
            let roomID = try database.run(insert)
            return roomID
        } catch {
            print("Insert room error: \(error)")
            return nil
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
            print("insert success")
            return rowID
        } catch {
            print ("insert review error: \(error)")
            return nil
        }
    }
    
    func insertImage(base64Image: String, room: Int64) -> Int64?{
        guard let database = db else { return nil }
        
        let insert = images.insert(self.base64Image<-base64Image, self.associatedRoomId<-room)
        
        do{ //the actual insert
            let rowID = try database.run(insert)
            return rowID
        } catch {
            print ("insert image error: \(error)")
            return nil
        }
    }
    
    //get all the buildings
    func getBuildings() -> [Building]{
        var buildings: [Building] = []
        guard let database = db else { return [] }
        
        do {
            for b in try database.prepare(self.buildings){
                buildings.append(Building(name: b[bname], coordinate: CLLocationCoordinate2D(latitude: b[latitude], longitude: b[longitude]), rooms: getRooms(b[bid])))
            }
        } catch {print(error)}
        
        return buildings
    }
    
    //get the study rooms for a specific building
    func getRooms(_ buildId: Int64) -> [StudySpace]{
        var rooms: [StudySpace] = []
        guard let database = db else { return [] }
        
        //let filter = self.rooms.filter(roomid == buildId)
        do {
            let val = Int.random(in: 1...100)
            for r in try database.prepare(self.rooms.filter(building == buildId)){
                rooms.append(StudyRoom(name: r[rname], description: r[description], numChairs: r[numChairs], numTables: r[numTables], numOutlets: r[numOutlets], reviews: getRevs(r[roomid]), images: getImages(r[roomid])))
                print("Room \(r[rname]) is appended to list with random value \(val)")
            }
        } catch {print(error)}
        
        return rooms
    }
    
    //get the reviews for a study room
    func getRevs(_ roomId: Int64) -> [Review]{
        var reviews: [Review] = []
        guard let database = db else { return [] }
        
        do {
            for r in try database.prepare(self.reviews.filter(forRoom == roomId)){
                reviews.append(Review(rating: r[rating], comment: r[comment], username: r[username]))
            }
        } catch {print(error)}
        
        return reviews
    }
    
    // get images for a room
    func getImages(_ roomId: Int64) -> [Image] {
        var images: [Image] = []
        guard let database = db else { return [] }

        
        do {
            for i in try database.prepare(self.images.filter(associatedRoomId == roomId)){
                images.append(Image(base64Image: i[base64Image]))
            }
        } catch {print(error)}

        return images
    }


    
    //gets building id from string
    func getBuilding(_ name: String) -> Int64{
        var id: Int64 = -1
        guard let database = db else { return -1 }
        
        do {
            for b in try database.prepare(self.buildings.filter(bname == name)){
                id = b[roomid]
            }
        } catch {print(error)}
        
        return id
        
    }
    
    //gets a room id from a string
    func getRoomID(_ name: String) -> Int64{
        var id: Int64 = -1
        guard let database = db else { return -1 }
        
        do {
            for r in try database.prepare(self.rooms.filter(rname == name)){
                id = r[roomid]
            }
        } catch {print(error)}
        
        return id
        
    }
    
    //check if it exists, or at least has elements
    func checkDB(){
        guard let database = db else { return }
        do {
            // Check if the buildings table already has data
            var num = 0
            for _ in try database.prepare(self.buildings) { num += 1 }
            if(num > 0) { return }
            else {
                 //Populate the database with initial data from `testbuildings`
                for build in testbuildings {
                    let id = insertBuilding(name: build.name, lat: build.coordinate.latitude, long: build.coordinate.longitude)
                    if let id = id {
                        for rm in build.rooms {
                            let rid = insertRoom(name: rm.name, desc: rm.description, nC: rm.numChairs, nT: rm.numTables, nO: rm.numOutlets, build: id)
                            if let rid = rid { // if there is a room id
                                for rv in rm.reviews { // insert the room's reviews
                                    _ = insertReview(rate: rv.rating, comment: rv.comment, user: rv.username, room: rid)
                                }
                                for im in rm.images {
                                    _ = insertImage(base64Image: im.base64Image, room: rid)
                                }
                            }
                        }
                    }
                }
            }
        } catch {
            print("Database check error: \(error)")
        }
    }

    
    func dropDB(){
        let fm = FileManager.default
        do{
            if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let dirPath = dir.appendingPathComponent(Self.dbName)
                try fm.removeItem(at: dirPath)
            }
        } catch {
            print("Drop error")
        }
    }
    
    func clearTables() {
        guard let database = db else { return }

        do {
            try database.run(rooms.delete())
            try database.run(buildings.delete())
            try database.run(reviews.delete())
            try database.run(images.delete())
            print("All tables cleared")
        } catch {
            print("Error clearing tables: \(error)")
        }
    }

}


