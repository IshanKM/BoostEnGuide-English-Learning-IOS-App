//
//  BoostEnGuideApp.swift
//  BoostEnGuide
//
//  Created by IKM on 10/28/24.
//

import SwiftUI
import Firebase
import GoogleSignIn

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
            // Configure Firebase
            FirebaseApp.configure()
            print("firebase configured")
            
            // Initialize Google Sign-In
            GIDSignIn.sharedInstance().clientID = "470864448748-op6m8maa94nesp3884mg9lk7k60060p6.apps.googleusercontent.com" // Replace with your Web Client ID
            print("Google Sign-In initialized")
            
            return true
        }
        
        // Handle Google Sign-In URL callback
        func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
            return GIDSignIn.sharedInstance().handle(url)
        }
    }
}
