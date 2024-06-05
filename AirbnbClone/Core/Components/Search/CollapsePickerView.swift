//
//  CollapsePickerView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct CollapsePickerView: View {
    let title: String
    let description : String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(Color(.text))
                
                Spacer()
                
                Text(description)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
        }
    }
}
