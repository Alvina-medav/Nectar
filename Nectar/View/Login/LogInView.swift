
import SwiftUI
import iPhoneNumberField

struct LogInView: View {
    @State private var phoneNumber = ""
    @State private var selectedCountry = Country.india
    @State private var showCountryPicker = false
    var body: some View {
        NavigationStack{
            ZStack{
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 900)
                VStack{
                    Image("sign_in_top")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 400)
                        .padding(.bottom, 500)
                }
                VStack{
                    Text("Get your groceries\nwith nectar")
                        .font(.gilroy(.semibold, size: 26))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 160)
                        .padding(.top, 35)
                    
                HStack(spacing: 12) {
                        Button(action: {
                            showCountryPicker = true
                        }) {
                            HStack(spacing: 4) {
                                Text(selectedCountry.flag)
                                    .font(.system(size: 28))
                                Text(selectedCountry.dialCode)
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                            }
                            .frame(width: 100)
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
                            .font(UIFont(size: 19, weight: .regular))
                    }
                    .padding(.top,10)
                    .padding(.horizontal,20)
                    
                    Divider()
                }
                
                VStack{
                    NavigationLink{
                        SignInView()
                    } label: {
                        Text("Continue with SignIn")
                            .font(.gilroy(.semibold, size: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 60, maxHeight: 60)
                            .background(Color.blue)
                            .cornerRadius(20)
                    }
                }
                .padding(.top, 250)
                .padding(.horizontal)
                
                VStack{
                    NavigationLink{
                        SignUpView()
                    } label: {
                        Text("Continue with Signup")
                            .font(.gilroy(.semibold, size: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 60, maxHeight: 60)
                            .background(Color(hex: "53B175"))
                            .cornerRadius(20)
                    }
                    
                    Divider()
                }
                .padding(.top, 400)
                .padding(.horizontal)
                
                
             
                
                VStack{
                    Text("or connect with social media")
                        .font(.gilroy(.semibold, size: 17))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .padding(.top, 530)
                }
                
                VStack{
                    HStack{
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        Image("apple_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                    .padding(.top, 650)
                    .padding(.horizontal, 5)
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
    LogInView()
}
