//
//  LogInView.swift
//  Nectar
//
//  Created by alvina medav  on 2/4/25.
//

import SwiftUI

struct SignInView: View {
    
    @State var email: String = ""
    @State var password: String = ""
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
                    Text("LogIn")
                        .font(.gilroy(.semibold, size: 28))
                        .foregroundColor(.black)
                        .padding(.trailing, 300)
                }
                .padding(.bottom, 380)
                
                VStack{
                    Text("Enter your emails and password")
                        .foregroundStyle(.black.opacity(0.6))
                        .font(.gilroy(.semibold, size: 16))
                        .padding(.top, 70)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.bottom, 380)
                
                VStack{
                    Text("Email")
                        .font(.gilroy(.bold, size: 19))
                        .foregroundColor(.black.opacity(0.6))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.bottom, 140)
                VStack{
                    TextField("Email", text: $email)
                    Divider()
                }
                .padding(.horizontal)
                .padding(.top,-40)
                
                VStack{
                    Text("Password")
                        .font(.gilroy(.bold, size: 19))
                        .foregroundColor(.black.opacity(0.6))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                .padding(.top, 90)
                
                VStack{
                    SecureField("Password", text: $password)
                    Divider()
                }
                .padding(.horizontal)
                .padding(.top, 200)
                
                VStack{
                    
                        Text("Forgot Password?")
                            .font(.gilroy(.semibold, size: 16))
                            .foregroundColor(.black.opacity(0.7))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                            .padding(.top, 280)
                            .padding(.horizontal)
                    
                }
                VStack{
                    NavigationLink{
                        //
                    } label: {
                        Text("LogIn")
                            .font(.gilroy(.semibold, size: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 60, maxHeight: 60)
                            .background(Color(hex: "53B175"))
                            .cornerRadius(20)
                    }
                    .padding(.horizontal,20)
                    .padding(.top, 450)
                    
                    VStack{
                       HStack{
                           Text("Don't have an account ?")
                               .font(.gilroy(.semibold, size: 16))
                               .foregroundColor(.black)
                             
                            NavigationLink{
                                SignUpView()
                            } label: {
                                Text("Signup")
                                    .font(.gilroy(.semibold, size: 16))
                                    .foregroundColor(.primaryApp)
                            }
                        }
                    }
                    .padding(.top, 20)
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
    SignInView()
}
