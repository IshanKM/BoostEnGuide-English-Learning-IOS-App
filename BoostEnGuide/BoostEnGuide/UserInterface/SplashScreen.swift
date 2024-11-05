import SwiftUI

struct SplashScreen: View {
    @State private var rotationAngle: Double = 0
    @State private var isActive = false // State to track navigation to LoginScreen

    var body: some View {
        ZStack {
            Color(red: 0, green: 0.8, blue: 0.4) // Bright green background
                .edgesIgnoringSafeArea(.all)
            
            if isActive {
                loginScreen()
            } else {
                VStack {
                    ZStack {
                        Image("logoOne")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .rotationEffect(.degrees(rotationAngle)) // Apply rotation effect
                            .onAppear {
                                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                                    rotationAngle = 360 // Rotate full circle continuously
                                }
                            }
                        
                        Image("logoTwo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
                .onAppear {
                    // Delay of 3 seconds before navigating to LoginScreen
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            isActive = true
                        }
                    }
                }
            }
        }
    }
}


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

