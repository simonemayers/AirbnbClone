//
//  ProfileOptionsView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct ProfileOptionsView: View {
    @ObservedObject var vm: ProfileViewModel
    
    var body: some View {
        HStack {
            
            HStack() {
                
                Image(systemName: vm.paramsSettings[0].iconName)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(Color.text)
                    .padding(.trailing, 8)
                
                Text(vm.paramsSettings[0].title)
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
