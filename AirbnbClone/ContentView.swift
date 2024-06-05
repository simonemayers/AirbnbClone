//
//  ContentView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 28/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var isSplashViewActive = true
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        if (isSplashViewActive) {
           SplashView(isActive: $isSplashViewActive)
        }else{
            MainTabBarView()
        }
    }
}

#Preview {
    ContentView()
}
