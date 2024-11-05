//  loginScreen.swift
//  BoostEnGuide
//
//  Created by IKM on 10/29/24.
//

import SwiftUI

struct loginScreen: View {
    var body: some View {
        ZStack() {
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
                
                Button(action: {
                    print("sign in with Apple")
                }) {
                    HStack(spacing: 16) {
                        Image("applelogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Continue with Apple")
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
                .offset(x: -0.07, y: 208)
                
                
                
                Button(action: {
                    print("sign in with google")
                }) {
                    HStack(spacing: 16) {
                        ZStack() {
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


struct loginScreen_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen()
    }
}
