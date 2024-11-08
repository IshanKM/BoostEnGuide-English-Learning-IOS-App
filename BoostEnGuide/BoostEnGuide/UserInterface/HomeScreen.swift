import SwiftUI
import GoogleSignIn

struct HomeScreen: View {
    @State private var userSignedIn = GIDSignIn.sharedInstance().currentUser != nil
    @State private var isLoggedOut = false // Track if the user is logged out

    var body: some View {
        NavigationView {
            VStack {
                
                    Button(action: {
                        signOut()
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
                
            }
            .onAppear {
                // Check if the user is already signed in when the screen appears
                userSignedIn = GIDSignIn.sharedInstance().currentUser != nil
            }
            .background(
                NavigationLink(destination: LoginScreen(), isActive: $isLoggedOut) {
                    LoginScreen()
                }
            )
        }
    }

    // Sign out method
    func signOut() {
        GIDSignIn.sharedInstance().signOut()
        userSignedIn = false
        isLoggedOut = true // Trigger navigation to LoginScreen
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
