//
//  SignUpView.swift
//  Nectar
//
//  Created by alvina medav  on 2/4/25.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var username: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 900)
                
                VStack{
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .padding(.bottom,650)
                }
                VStack{
                    Text("Sign Up")
                        .font(.gilroy(.semibold, size: 26))
                        .foregroundColor(.black)
                        .padding(.trailing, 280)
                        
                }
                .padding(.bottom, 380)
                
                VStack{
                    Text("Enter your credentials to continue")
                        .foregroundStyle(.black.opacity(0.6))
                        .font(.gilroy(.semibold, size: 16))
                        .padding(.top, 70)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.bottom, 380)
                
                VStack{
                    Text("username")
                        .font(.gilroy(.bold, size: 19))
                        .foregroundColor(.black.opacity(0.6))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.bottom, 200)
                VStack{
                    TextField("username", text: $username)
                    Divider()
                }
                .padding(.horizontal)
                .padding(.top,-70)
                
                VStack{
                    Text("Email")
                        .font(.gilroy(.bold, size: 19))
                        .foregroundColor(.black.opacity(0.6))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.top, 10)
                VStack{
                    TextField("Email", text: $email)
                    Divider()
                }
                .padding(.horizontal)
                .padding(.top,100)

                VStack{
                    Text("Password")
                        .font(.gilroy(.bold, size: 19))
                        .foregroundColor(.black.opacity(0.6))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.top, 210)
                
                VStack{
                    SecureField("Password", text: $password)
                    Divider()
                }
                .padding(.horizontal)
                .padding(.top, 310)
                
                VStack{
                    HStack{
                        Text("By continuing you agree to our ")
                            .font(.gilroy(.semibold, size: 16))
                            .foregroundColor(.black.opacity(0.5))
                        
                        Text("Terms of service")
                            .font(.gilroy(.semibold, size: 16))
                            .foregroundColor(.primaryApp)
                    }
                    .padding(.top, 400)
                    
                    HStack{
                        Text("and ")
                            .font(.gilroy(.semibold, size: 16))
                            .foregroundColor(.black.opacity(0.5))
                        
                        Text("privacy policy.")
                            .font(.gilroy(.semibold, size: 16))
                            .foregroundColor(.primaryApp)
                    }
                    .multilineTextAlignment(.leading)
                }
                
                VStack{
                    NavigationLink{
                        //
                    } label: {
                        Text("Sign Up")
                            .font(.gilroy(.semibold, size: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 60, maxHeight: 60)
                            .background(Color(hex: "53B175"))
                            .cornerRadius(20)
                    }
                }
                .padding(.top, 560)
                .padding(.horizontal, 15)
                
                VStack{
                   HStack{
                       Text("Don't have an account ?")
                           .font(.gilroy(.semibold, size: 16))
                           .foregroundColor(.black)
                         
                        NavigationLink{
                            SignInView()
                        } label: {
                            Text("SignIn")
                                .font(.gilroy(.semibold, size: 16))
                                .foregroundColor(.primaryApp)
                                .multilineTextAlignment(.center)
                        }
                    }
                }
                .padding(.top, 700)
            }
            .ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SignUpView()
}
