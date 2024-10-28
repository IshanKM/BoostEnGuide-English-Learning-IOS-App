//
//  SplashScreen.swift
//  BoostEnGuide
//
//  Created by IKM on 10/28/24.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.8, blue: 0.4) // Bright green background
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                        .frame(width: 120, height: 120)
                    
                    Circle()
                        .trim(from: 0.0, to: 0.75)
                        .stroke(Color.white, lineWidth: 4)
                        .frame(width: 120, height: 120)
                        .rotationEffect(Angle(degrees: 135))
                    
                    VStack(spacing: 0) {
                        Text("Boost on")
                            .font(.system(size: 18, weight: .bold))
                        Text("Guide")
                            .font(.system(size: 18, weight: .bold))
                    }
                    .foregroundColor(.black)
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
