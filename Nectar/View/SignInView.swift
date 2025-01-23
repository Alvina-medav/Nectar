//
//  SignInView.swift
//  Nectar
//
//  Created by students on 3/11/46.
//

import SwiftUI
import iPhoneNumberField

struct SignInView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presentationMode
    @State private var phoneNumber = ""
    @State private var selectedCountry = Country.india
    @State private var showCountryPicker = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenHeight)
                
                
                VStack{
                    Image("sign_in_top")
                        .resizable()
                        .scaledToFill()
                        .frame(width: .screenWidth, height: .screenWidth)
//                    Spacer()
                    
                    Text("Get your groceries\n with nectar")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                    //                      .padding(.bottom,140)
                    //                        .padding(.top, 110)
                    
                    
                    
                    Spacer()
                    
                    HStack(spacing: 12) {
                        Button(action: {
                            showCountryPicker = true
                        }) {
                            HStack(spacing: 4) {
                                Text(selectedCountry.flag)
                                    .font(.system(size: 22))
                                Text(selectedCountry.dialCode)
                                    .font(.system(size: 18))
                                    .foregroundColor(.black)
                            }
//                            .frame(width: 100)
                            .padding(.leading, -20)
                        }
                        .sheet(isPresented: $showCountryPicker) {
                            NavigationView {
                                CountryPickerView(selectedCountry: $selectedCountry)
                                    .navigationTitle("Select Country")
                                    .navigationBarTitleDisplayMode(.inline)
                            }
                        }
                        iPhoneNumberField("Enter phone number", text: $phoneNumber)
                            .flagHidden(true)
                            .flagSelectable(false)
                            .formatted(true)
                            .font(UIFont(size: 16, weight: .regular))
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom,300)
                    Rectangle()
                                           .frame(height: 1)
                                           .foregroundColor(.gray.opacity(0.3))
                                           .padding(.horizontal, 30)
                                           .padding(.bottom, 25)
                    
                    NavigationLink{
                                               //
                                           } label: {
                                               Text("Continue with SignIn")
                                                   .font(.customfont(.semibold, fontSize: 18))
                                                   .foregroundColor(.white)
                                                   .multilineTextAlignment(.center)
                                                   .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                                                   .background(Color(hex: "5383EC"))
                                                   .cornerRadius(20)
                                           }
                                           .padding(.horizontal, 20)
                                           
                                           
                                           NavigationLink{
                                               //
                                           } label: {
                                               Text("Continue with SignUp")
                                                   .font(.customfont(.semibold, fontSize: 18))
                                                   .foregroundColor(.white)
                                                   .multilineTextAlignment(.center)
                                                   .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                                                   .background(Color.primaryApp)
                                                   .cornerRadius(20)
                                           }
                                           
                                           .padding(.horizontal, 20)
                    
                    
                    
                    
                }
                
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SignInView()
}
