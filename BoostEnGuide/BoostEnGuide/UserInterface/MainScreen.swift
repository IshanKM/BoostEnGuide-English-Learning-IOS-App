import SwiftUI
import Firebase
import GoogleSignIn
import AuthenticationServices

struct MainScreen: View {
    @State private var isSignedIn = true // Track whether the user is signed in or not
    
    var body: some View {
        VStack {
            if isSignedIn {
                // Show main content when the user is signed in
                Text("Hello, World!")
                    .padding()
                
                Button(action: {
                    signOut() // Sign out when the button is clicked
                }) {
                    Text("Sign Out")
                        .foregroundColor(.red)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.red, lineWidth: 1)
                        )
                }
            } else {
                // Show the LoginScreen when the user is signed out
                LoginScreen() // You need to return LoginScreen here when signed out
            }
        }
        .onAppear {
            // Check if the user is already signed in
            if Auth.auth().currentUser == nil {
                isSignedIn = false
            }
        }
    }
    
    // Function to handle sign out process
    func signOut() {
        do {
            // Sign out from Google
            GIDSignIn.sharedInstance().signOut()
            
            // Sign out from Firebase
            try Auth.auth().signOut()
            
            // Update state to show LoginScreen
            isSignedIn = false
        } catch {
            print("Sign out failed: \(error.localizedDescription)")
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
