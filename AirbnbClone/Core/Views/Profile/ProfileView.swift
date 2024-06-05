//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 29/05/2024.
//

import SwiftUI




struct ProfileView: View {

    @StateObject var vm = ProfileViewModel()
    @State var showLogin: Bool = false
    

    
    var body: some View {
    
        ScrollView {
            VStack (alignment: .leading, spacing: 20) {
//                Spacer(50)
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, 100)
                
                Text("Log in to start planning your next trip.")
                    .foregroundStyle(.gray)
                    .padding(.bottom)
                
                Button {
                    showLogin = true
                } label: {
                   LoginButton(width: 360, height: 48)
                        
                }.padding(.vertical)
                
                HStack{
                    Text("Don't have an account")
                        .foregroundStyle(.gray)
                    Button {
                        showLogin = true
                    } label: {
                        Text("Sign Up")
                            .foregroundStyle(.gray)
                            .underline()
                    }
                }
            }
            
            HostAdView()
            
            
            VStack {
                ForEach(vm.paramsSettings, id: \.self ){ item in
                    Button{
                        
                    }label: {
                        ProfileOptionsView(item: item)
                        
                        Divider()
                    }
                    .padding(.bottom, 5)
                  
                }
            }.padding()
            
            Spacer()
        }
        .sheet(isPresented: $showLogin) {
            LoginOrSignUpView(
                vm: LoginOrSignUpViewModel(phoneNumber: "", selectedCountry: "", dismiss: showLogin), isPresented: $showLogin)
        }
    }
}

#Preview {
    ProfileView(vm: ProfileViewModel())
}


