//
//  SplashView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import SwiftUI

struct SplashView: View {
    @Binding var isActive: Bool
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(.systemBackground))
            
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
        .ignoresSafeArea()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                     withAnimation {
                         self.isActive = false
                     }
                 }
        }
    }
}


#Preview {
    SplashView(isActive: .constant(true))
}
