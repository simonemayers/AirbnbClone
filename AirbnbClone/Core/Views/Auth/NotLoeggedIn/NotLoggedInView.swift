//
//  NotLoggedInView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import SwiftUI


struct NotLoggedInView: View {
    @ObservedObject var vm: NotLoggedInViewModel
    
    var body: some View {
        ScrollView {
    
            VStack (alignment: .leading , spacing: 40){
                Text(vm.page.title)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading , spacing: 10) {
                    Text(vm.page.subTitle)
                        .font(.title2)
                        .fontWeight(.semibold)
                        
                    Text(vm.page.message)
                        .font(.title3)
                        .foregroundStyle(.gray)
                    
                    Button {
                        vm.isLoginOrSignUp = true
                    } label: {
                        LoginButton(width: 140, height: 60)
                        
                        Spacer()
                            
                    }
                    .padding(.top, 60)
                    .sheet(isPresented: $vm.isLoginOrSignUp) {
                        LoginOrSignUpView(vm: LoginOrSignUpViewModel(phoneNumber: "", selectedCountry: "", dismiss: false), isPresented: $vm.isLoginOrSignUp)
                    }
                       
                }.padding()
                
             
            }.padding()
            
       
        }
    }
}


#Preview {
    NotLoggedInView(
        vm: NotLoggedInViewModel(
            page: NotLoggedInViewModel.NotLoggedInPageItem(
                title: "Profile",
                subTitle: "Log in to view your wishlists",
                message: "You can create, view, or edit wishlists once you've logged in"
            )
        )
    )
}
