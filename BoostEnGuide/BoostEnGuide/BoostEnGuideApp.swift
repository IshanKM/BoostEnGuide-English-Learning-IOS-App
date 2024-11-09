//
//  BoostEnGuideApp.swift
//  BoostEnGuide
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct BoostEnGuideApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   
    var body: some Scene {
        WindowGroup {
            SplashScreen() // Root view that handles navigation logic based on authentication state
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            // Configure Firebase
            FirebaseApp.configure()
            print("Firebase configured")
            
            // Initialize Google Sign-In
            GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
            print("Google Sign-In initialized")
            
            return true
        }
        
        // Handle Google Sign-In URL callback
        func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
            return GIDSignIn.sharedInstance().handle(url)
        }
    }
}
