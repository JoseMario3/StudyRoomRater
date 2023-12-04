//
//  AppDelegate.swift
//  StudyRoomRater
//
//  Created by user246268 on 11/10/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        //Uncomment this when there is new data in TestData
        //SQLiteStructure.shared.clearTables()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
//        let fileManager = FileManager.default
//        let documentsUrl = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
//        let databasePath = documentsUrl.appendingPathComponent("StudyRoomDB/study.sqlite3").path
//
//        if fileManager.fileExists(atPath: databasePath) {
//            do {
//                try fileManager.removeItem(atPath: databasePath)
//                print("Database Deleted")
//            } catch {
//                print("Could not delete database: \(error)")
//            }
//        } else {
//            print("Database file does not exist")
//        }
    }



}

