//
//  LoginOrSignUpView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import SwiftUI



struct LoginOrSignUpView: View {

    @ObservedObject var vm: LoginOrSignUpViewModel
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            HStack{
                Button{
                    vm.dismiss = true
                   isPresented = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.text)
                        .padding(.leading)
                }
                HStack {
                    Spacer()
                    Text("Log in or Sign up")
                        .frame(height: 60)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                    Spacer()
                }
             
              
            }.padding(.horizontal)
            Divider()
            ScrollView{
                VStack{
                    
                    VStack (spacing: 0){
                        
                        HStack{
                         
                            Button{
                                
                            }label: {
                                VStack (alignment: .leading){
                                    Text("Country/Region").font(.footnote).foregroundStyle(.gray)
                                   Text("United States (+1)").foregroundColor(.black)
                                }.padding()
                                Spacer()
                                Image(systemName: "chevron.down")
                                    .foregroundStyle(Color.text)
                                    .padding()
                            }
                            
                        }
                        .frame(height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray, lineWidth: 1)
                        )
                        
                        TextField("Phone Number", text: $vm.phoneNumber)
                            .padding(.horizontal)
                            .frame(height: 60)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray, lineWidth: 1 )
                            )
                    }
                    
                    .frame(height: 120)
            
                    
                    
                    Text("We'll call or text to confirm your number. Standard message and data rates apply.")
                        .padding(.vertical)
                        .font(.footnote)
                        .foregroundStyle(Color.text)
                    
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Spacer()
                            Text("Continue")
                                .font(.title3)
                                .foregroundStyle(Color.text)
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .frame(height: 60)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    }.padding(.top)
                    
                    HStack {
                        VStack{
                            Divider()
                        }
                        Text("or")
                        VStack{
                            Divider()
                        }
                    }.padding(.vertical)
                    
                    
                    VStack (spacing: 20){
                        
    
                        Button {
                            
                        } label: {
                            ThirdPartyLoginButtonView(title: "Continue with email", iconName: "envelope")
                        }
                        Button {
                            
                        } label: {
                            ThirdPartyLoginButtonView(title: "Continue with Apple", iconName: "apple.logo")
                        }
                        
                        Button {
                            
                        } label: {
                            ThirdPartyLoginButtonView(title: "Continue with Google", iconName: "google", isImage: true)
                        }
                        
                        Button {
                            
                        } label: {
                            ThirdPartyLoginButtonView(title: "Continue with Facebook", iconName: "facebook", isImage: true)
                        }
                    }
                    
                    
                    
                }.padding()
            }
        }
    }
}

#Preview {
    LoginOrSignUpView(vm: LoginOrSignUpViewModel(phoneNumber: "", selectedCountry: "", dismiss: false), isPresented: .constant(true))
}

