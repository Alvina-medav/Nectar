//
//  SignInView.swift
//  Nectar
//
//  Created by alvina medav  on 2/4/25.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                   
                
            }
            .ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SignInView()
}
