//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import Foundation


class ExploreService {
    func fetchListings() async throws ->  [Listing] {
        return DeveloperPreview.shared.mockListings.shuffled()
    }
}
