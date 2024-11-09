import SwiftUI
import GoogleSignIn
import Firebase

struct HomeScreen: View {
    @AppStorage("isAuthenticated") private var isAuthenticated = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to BoostEnGuide!")
                    .font(.largeTitle)
                    .padding()

                Button(action: {
                    GIDSignIn.sharedInstance().signOut()
                    try? Auth.auth().signOut()
                    isAuthenticated = false // Update auth state to show LoginScreen
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
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
