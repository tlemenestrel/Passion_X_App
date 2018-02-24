//
//  AppDelegate.swift
//  TableViewTest2.0
//
//  Created by Thomas Le Menestrel on 30/12/17.
//  Copyright © 2017 Passion for Creation. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMessaging
import FirebaseInstanceID
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate { 

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UITabBar.appearance().tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        UITabBar.appearance().barTintColor = UIColor(red: 151/255, green: 31/255, blue: 35/255, alpha: 1.0)
        UITabBar.appearance().unselectedItemTintColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
        FirebaseApp.configure()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (success, error) in
            if error == nil {
             print ("Tu as réussi")
            }
            
        }
        application.registerForRemoteNotifications()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.refreshToken(notification:)), name: NSNotification.Name.InstanceIDTokenRefresh, object: nil)
        return true
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        Messaging.messaging().shouldEstablishDirectChannel = false
        
    }


    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        FBHandler()
    }
    
    @objc func refreshToken(notification: NSNotification) {
        let refreshToken = InstanceID.instanceID().token()!
        print("***\(refreshToken) ***")
        
        FBHandler()
       
    }
    
    
    func FBHandler () {
        Messaging.messaging().shouldEstablishDirectChannel = true
        
    }


}

