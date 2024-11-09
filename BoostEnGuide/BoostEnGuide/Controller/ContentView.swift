import SwiftUI
import Firebase
import GoogleSignIn
import AuthenticationServices

struct ContentView: View {
    @AppStorage("isAuthenticated") private var isAuthenticated = false
    
    var body: some View {
        Group {
            if isAuthenticated {
                HomeScreen()
            } else {
                LoginScreen()
            }
        }
        .onAppear {
            checkUserAuthentication()
        }
    }
    
    private func checkUserAuthentication() {
        // Check if the user is already signed in with Firebase
        if Auth.auth().currentUser != nil {
            isAuthenticated = true
        } else {
            isAuthenticated = false
        }
    }
}
