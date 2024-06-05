//
//  ProfileOptionsView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct ProfileOptionsView: View {
    let item: ProfileViewModel.SettingsItem
    var body: some View {
        HStack {
            
            HStack() {
                
                Image(systemName: item.iconName)
                    .frame(width: 25, height: 25)
                    .foregroundStyle(Color.text)
                    .padding(.trailing, 8)
                
                Text(item.title)
                    .font(.title3)
                    .foregroundStyle(Color.text)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundStyle(Color.text)
        }
        .padding(.vertical, 7)
    }
}
