import SwiftUI


struct welcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenHeight)
                
                VStack{
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.top,380)
                    
                    Text("welcome \nto our store ")
                        .font(.customfont(.semibold, fontSize: 48))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    
                    Text("get your groceries in as fast as one hour")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white.opacity(0.7))
                        .multilineTextAlignment(.center)
                    
                    NavigationLink{
                       // SignInView()
                    } label: {
                    Text("Get Started")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                            .background(Color.primaryApp)
                            .cornerRadius(20)
                            .padding(.horizontal,10)
                            .padding(.top, 30)
                    }
                    
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
   welcomeView()
}
