import SwiftUI
import Firebase
import GoogleSignIn
import AuthenticationServices

struct LoginScreen: View {
    @State private var isAuthenticated = false
    @StateObject private var appleSignInCoordinator = AppleSignInCoordinator()
    @StateObject private var googleSignInCoordinator = GoogleSignInCoordinator() // Add this line

    // Check if the user is already logged in
    init() {
        if let _ = Auth.auth().currentUser {
            _isAuthenticated = State(initialValue: true)
        }
    }

    var body: some View {
        VStack {
            if isAuthenticated {
                // Show HomeScreen if the user is authenticated
                //HomeScreen()
            } else {
                // Show LoginScreen if the user is not authenticated
                ZStack {
                    Group {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 389, height: 261)
                            .background(
                                Image("loginscreencover")
                                    .resizable()
                                    .scaledToFit()
                            )
                            .offset(x: 0.43, y: -295.50)

                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 389, height: 64)
                            .background(
                                Image("mainlogo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            )
                            .offset(x: 0.43, y: 392)

                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 389, height: 683)
                            .background(Color.white)
                            .cornerRadius(40)
                            .offset(x: 0.43, y: 143.50)

                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 134, height: 5)
                            .background(Color.white)
                            .cornerRadius(100)
                            .offset(x: -0.07, y: 423.50)

                        // Sign in with Apple button
                        SignInWithAppleButton(.signIn, onRequest: { request in
                            request.requestedScopes = [.fullName, .email]
                        }, onCompletion: { result in
                            switch result {
                            case .success(let authorization):
                                appleSignInCoordinator.handleAuthorization(authorization)
                            case .failure(let error):
                                print("Apple Sign-In failed: \(error.localizedDescription)")
                            }
                        })
                        .signInWithAppleButtonStyle(.black)
                        .frame(width: 280, height: 50)
                        .cornerRadius(50)
                        .offset(y: 208)

                        // Sign in with Google button
                        Button(action: {
                            googleSignInCoordinator.signInWithGoogle {
                                self.isAuthenticated = true
                            }
                        }) {
                            HStack(spacing: 16) {
                                ZStack {
                                    Image("googlelogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                }
                                .frame(width: 24, height: 24)

                                Text("Continue with Google")
                                    .font(Font.custom("Figtree", size: 16).weight(.medium))
                                    .foregroundColor(Color(red: 0.12, green: 0.16, blue: 0.23))
                            }
                            .padding(16)
                            .frame(width: 280)
                            .background(Color.white)
                            .cornerRadius(9999)
                            .overlay(
                                RoundedRectangle(cornerRadius: 9999)
                                    .inset(by: 1)
                                    .stroke(Color(red: 0.89, green: 0.91, blue: 0.94), lineWidth: 1)
                            )
                        }
                        .offset(x: -0.07, y: 279)
                        
                        Text("BoostEnGuide is your path to English fluency in one month. Learn with documentaries and track vocabulary, and practice speaking and writing with AI-powered tools. Start improving your English skills today!")
                                            .font(Font.custom("Inter", size: 13).weight(.medium))
                                            .tracking(0.50)
                                            .lineSpacing(10)
                                            .foregroundColor(Color(red: 0.63, green: 0.65, blue: 0.75))
                                            .padding(20) // Added padding
                                            .offset(x: 0.43, y: 45.50)
                                        
                                        Ellipse()
                                            .foregroundColor(.clear)
                                            .frame(width: 103, height: 111)
                                            .background(
                                                Image("mainlogo")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 100, height: 100)
                                            )
                                            .offset(x: 1.43, y: -123.50)
                                        
                                        Ellipse()
                                            .foregroundColor(.clear)
                                            .frame(width: 1, height: 3)
                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .offset(x: 26.43, y: 15.50)
                                        
                                        Ellipse()
                                            .foregroundColor(.clear)
                                            .frame(width: 11, height: 12)
                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                                            .offset(x: -20.57, y: -222)
                        
                    }
                    
                    Group {
                                    Ellipse()
                                        .foregroundColor(.clear)
                                        .frame(width: 11, height: 12)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.60))
                                        .offset(x: 1.43, y: -222)
                                    
                                    Ellipse()
                                        .foregroundColor(.clear)
                                        .frame(width: 11, height: 12)
                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.60))
                                        .offset(x: 23.43, y: -222)
                                    
                                    Text("Sign in or Create a Account ")
                                        .font(Font.custom("Inter", size: 15).weight(.semibold))
                                        .tracking(0.50)
                                        .lineSpacing(25)
                                        .foregroundColor(Color(red: 0.91, green: 0.36, blue: 0.14))
                                        .offset(x: -62.57, y: 140.50)
                                    
                                    Text("Welcome !")
                                        .font(Font.custom("Inter", size: 15).weight(.bold))
                                        .tracking(0.50)
                                        .lineSpacing(25)
                                        .foregroundColor(.black)
                                        .offset(x: -140.57, y: -38.50)
                                    
                                    Text("By signing in to BoostEnGuide, your agree to our\nTerms and Privacy Policy.")
                                        .font(Font.custom("Inter", size: 13).weight(.medium))
                                        .tracking(0.50)
                                        .lineSpacing(05)
                                        .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                                        .offset(x: 0, y: 374.50)
                                }
                }
            }
        }
    }
}

struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

class GoogleSignInCoordinator: NSObject ,ObservableObject {
    var onSignInSuccess: (() -> Void)?

        func signInWithGoogle(completion: @escaping () -> Void) {
            guard let clientID = FirebaseApp.app()?.options.clientID else { return }

            // Configure GIDSignIn with the client ID
            GIDSignIn.sharedInstance()?.clientID = clientID
            self.onSignInSuccess = completion
            
            // Start the sign-in process
            GIDSignIn.sharedInstance()?.presentingViewController = UIApplication.shared.windows.first?.rootViewController
            GIDSignIn.sharedInstance()?.signIn()
        }

        // GIDSignInDelegate method
        func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
            if let error = error {
                print("Google Sign-In failed: \(error.localizedDescription)")
                return
            }

            // Authenticate with Firebase
            guard let authentication = user.authentication, let idToken = authentication.idToken else { return }
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)

            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    print("Firebase Sign-In with Google failed: \(error.localizedDescription)")
                } else {
                    print("User signed in with Google successfully")
                    // User signed in successfully, call the completion handler
                    self.onSignInSuccess?()
                }
            }
        }
}

class AppleSignInCoordinator: NSObject ,ObservableObject{
    var onSignInSuccess: (() -> Void)?

    func handleAuthorization(_ authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            // Retrieve the user identifier
            let userID = appleIDCredential.user
            // Retrieve optional information
            let fullName = appleIDCredential.fullName
            let email = appleIDCredential.email
            
            print("User ID: \(userID)")
            if let name = fullName {
                print("Full Name: \(name)")
            }
            if let email = email {
                print("Email: \(email)")
            }

            // Convert identityToken (Data) to String
            guard let identityToken = appleIDCredential.identityToken,
                  let identityTokenString = String(data: identityToken, encoding: .utf8) else {
                print("Error: Unable to convert identityToken to String")
                return
            }

            // Authenticate with Firebase using the Apple ID credentials
            let credential = OAuthProvider.credential(withProviderID: "apple.com", idToken: identityTokenString, rawNonce: nil)
            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    print("Firebase Sign-In with Apple failed: \(error.localizedDescription)")
                } else {
                    print("User signed in with Apple successfully")
                    // Redirect to HomeScreen
                    self.onSignInSuccess?()
                }
            }
        }
    }
}

