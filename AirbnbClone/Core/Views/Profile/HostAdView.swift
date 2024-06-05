//
//  HostAd.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct HostAdView: View {
    var body: some View {
        HStack (alignment: .top, spacing: 20){
            VStack(alignment: .leading, spacing: 10) {
                Text("Airbnb your place")
                    .font(.headline)
                    .foregroundStyle(.black)
                Text("It is simple to get set up and start earning")
                    .foregroundStyle(.gray)
            }.padding()
          
            
            Image("listing-0")
                .resizable()
                .frame(width: 100, height: 90)
                .padding()
            
            
        }
        .foregroundStyle(Color.text)
        .font(.subheadline)
        .fontWeight(.semibold)
        .frame(width: 360, height: 130)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(radius: 10)
        .padding()
    }
    
}
