//
//  LoginButtonView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct ThirdPartyLoginButtonView: View {
    var title : String
    var iconName: String
    var isImage = false;
    var body: some View {
        HStack {
            if (isImage) {
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.text).padding(.leading, 10)
            }else{
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.text).padding(.leading, 10)
            }
            
            Spacer()
            
            Text(title)
                .font(.headline)
                .padding(.trailing, 20)
                .foregroundStyle(Color.text)
            Spacer()
            
        } .foregroundStyle(Color.text)
            .font(.subheadline)
            .frame(height: 54)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 1)
            )
    }
}

