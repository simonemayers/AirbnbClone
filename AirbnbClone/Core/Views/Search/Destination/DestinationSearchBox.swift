//
//  DestinationSearchBox.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct DestinationSearchBox: View {
    @ObservedObject var vm: ExplorerViewModel
    @Binding var show : Bool
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .imageScale(.small)
            TextField("Search destination" ,text: $vm.trip.destination)
                .onSubmit {
                    show.toggle()
                }
        }.frame(height: 44)
            .padding(.horizontal)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color(.systemGray4))
            }
    }
}
