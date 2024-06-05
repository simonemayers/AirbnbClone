//
//  LoginButton.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct LoginButton: View {
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        Text("Log in")
            .font(.title3)
            .foregroundStyle(.white)
            .font(.subheadline)
            .fontWeight(.bold)
            .frame(width: width, height: height)
            .background(Color.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}


