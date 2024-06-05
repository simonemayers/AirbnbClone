//
//  LoginOrSignUpViewModel.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

class LoginOrSignUpViewModel: ObservableObject {
    let countries = ["United States", "Canada", "Mexico", "Germany", "France", "Italy"];
    
    @Published var phoneNumber: String
    
    @Published var selectedCountry: String
    
    @Published var dismiss: Bool
    
    init(phoneNumber: String, selectedCountry: String, dismiss: Bool) {
        self.phoneNumber = phoneNumber
        self.selectedCountry = selectedCountry
        self.dismiss = dismiss
    }
    
}
