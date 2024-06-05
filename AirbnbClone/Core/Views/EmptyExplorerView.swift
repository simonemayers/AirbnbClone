//
//  EmptyExplorerView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/5/24.
//

import Foundation
import SwiftUI
import WrappingHStack

struct EmptyExplorerView: View {
    
    @ObservedObject var vm: ExplorerViewModel
    @State var isShowingExplorerView: Bool
    
    var body: some View {
        VStack(spacing: 20){

            Text("No exact matches")
                .fontWeight(.bold)
                .padding(.top, 50)
            
            Divider()
                .overlay(Color.text)
            
            Text("Try changing or removing some of your filters or adjusting your search area.")
                .padding(.bottom)
            
            WrappingHStack(lineSpacing: 15){
                Button("Clear Destination") {
                    vm.clearSearchView()
                    isShowingExplorerView = false
                }
                .frame(width: 140)
                
                Button("Remove Dates"){
                    vm.clearSearchView()
                    isShowingExplorerView = false
                }
                .frame(width: 120)
                
                Button("Clear Guests"){
                    vm.clearSearchView()
                    isShowingExplorerView = false
                }
                .frame(width: 110)
                
                Button("Clear All") {
                    vm.clearSearchView()
                    isShowingExplorerView = false
                }
                .frame(width: 80)
            }
            .buttonStyle(.bordered)
            .fontWeight(.bold)
            
            

        }
        .background(Color(.systemBackground))
        .foregroundStyle(Color.text)
        .padding()
        .font(.footnote)
    }
}

#Preview {
    EmptyExplorerView(vm: ExplorerViewModel(service: ExploreService()), isShowingExplorerView: true)
}
