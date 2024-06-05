//
//  xDismissButton.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct xDismissButton: View {
    @Binding var show : Bool
    var body: some View {
        Button{
            withAnimation(.snappy) {
                show.toggle()
            }
        }label: {
            Image(systemName: "xmark.circle")
                .resizable()
                .frame(width:25, height: 25)
                .imageScale(.small)
                .foregroundStyle(Color.accentColor)
        }
    }
}
