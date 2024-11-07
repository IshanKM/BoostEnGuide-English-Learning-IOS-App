//
//  BoostEnGuideApp.swift
//  BoostEnGuide
//
//  Created by IKM on 10/28/24.
//

import SwiftUI
import Firebase


@main
struct BoostEnGuideApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("firebase configure")

        return true
      }
    }
}
