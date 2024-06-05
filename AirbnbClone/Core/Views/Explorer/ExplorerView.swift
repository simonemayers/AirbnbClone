//
//  Explorer.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 28/05/2024.
//

import SwiftUI

struct ExplorerView: View {
    
    @State private var showDestinationSearchView = false
    @StateObject var vm = ExplorerViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if(showDestinationSearchView)  {
                DestinationSearchView(show: $showDestinationSearchView, vm: vm)
            } else {
                VStack {
                    SearchAndFilterBarView(location: $vm.trip.destination)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
 
                    CategoryCarouselView(vm: vm)

                    
                    ScrollView{
                        
                        LazyVStack (spacing: 32){
                            if(vm.listings.isEmpty) {
                                EmptyExplorerView(vm: vm, isShowingExplorerView: false)
                            } else{
                                ForEach(vm.listings) { listing in
                                    NavigationLink(value: listing ){
                                        ListingItemView(listing: listing, canBeShared: true)
                                            .frame(height: 420)
                                            .padding(.bottom, 30)
                                    }
                                }
                            }
                        } .padding()
                    }
                    .navigationDestination(for: Listing.self) { listing in
                        ListingDetailView(listing: listing)
                        
//                            .navigationBarBackButtonHidden()
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    ExplorerView(vm: ExplorerViewModel(service: ExploreService()))
}
