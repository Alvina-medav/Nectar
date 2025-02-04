//
//  ContentView.swift
//  Nectar
//
//  Created by alvina medav  on 03/02/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 900 )
                
                VStack{
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 56, height: 56)
                       
                    
                    Text("welcome\n to our store")
                        .font(.gilroy(.semibold, size: 48))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Get your groceries in as fast as one hour")
                        .foregroundColor(Color.white.opacity(0.7))
                        .font(.gilroy(.medium, size: 18))
                        .multilineTextAlignment(.center)
                        .padding(.top,-2)
                }
                .padding(.top, 280)
                
                VStack{
                    NavigationLink{
                        SignInView()
                    } label: {
                        Text("Get Started")
                            .font(.gilroy(.semibold, size: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 60, maxHeight: 60)
                            .background(Color(hex: "53B175"))
                            .cornerRadius(20)
                        
                            
                    }
                    .padding(.horizontal,20)
                   
                    .padding(.top,630)
                   
                }
            }
            .ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
   WelcomeView()
}
