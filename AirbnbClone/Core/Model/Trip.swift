//
//  Trip.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import SwiftUI


class Trip: ObservableObject {
    @Published var startDate: Date
    @Published var endDate: Date
    @Published var destination: String
    @Published var guestCount: Int
    
    init(startDate: Date, endDate: Date, destination: String, guestCount: Int) {
        self.startDate = DateFormatter.customDate.date(from: DateFormatter.customDate.string(from: startDate))!
        self.endDate = DateFormatter.customDate.date(from: DateFormatter.customDate.string(from: endDate))!
        self.destination = destination
        self.guestCount = guestCount
    }
}
