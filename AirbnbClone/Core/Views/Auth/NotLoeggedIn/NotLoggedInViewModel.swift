//
//  NotLoggedInViewModel.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

class NotLoggedInViewModel: ObservableObject {
    @Published var page :  NotLoggedInPageItem
    @Published var isLoginOrSignUp : Bool = false
    
    struct NotLoggedInPageItem {
        var title : String;
        var subTitle: String;
        var message : String;
    }

    
    init(page: NotLoggedInPageItem){
        self.page = page
    }
    
}


