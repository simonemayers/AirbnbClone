//
//  SearchButton.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct SearchButton: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 15, height: 15)
                .foregroundColor(.white)
                
            Text("Search")
                .font(.subheadline)
                .fontWeight(.semibold)
               
        } .foregroundStyle(.white)
            .font(.subheadline)
            .frame(width: 140, height: 50)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
