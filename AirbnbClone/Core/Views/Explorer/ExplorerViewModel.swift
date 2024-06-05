//
//  ExportViewModel.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import Foundation
import Combine


class ExplorerViewModel : ObservableObject {
    
    @Published var listings = [Listing]()
    @Published var trip: Trip
    
    private let service: ExploreService
    private var listingsCopy = [Listing]()

    init (service : ExploreService) {
        self.service = service
        self.trip = Trip(startDate: Date().tomorrow, endDate: Date().nextWeek, destination: "", guestCount: 0)
        
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async   {
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = self.listings
        }catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func clearSearchView(){
        trip.destination = ""
        trip.guestCount = 0
        trip.startDate = Date().tomorrow
        trip.endDate = Date().nextWeek
        updateListingForLocation()
    }
    
    func updateListingForLocation()  {
        let filteredListings = listings.filter( {
            $0.city.lowercased().contains(trip.destination.lowercased())  ||
            $0.state.lowercased().contains(trip.destination.lowercased())
        })
        
        self.listings = (filteredListings.isEmpty && trip.destination.isEmpty) ? listingsCopy : filteredListings
    }
    

}



