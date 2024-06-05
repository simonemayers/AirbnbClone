//
//  Listing.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import Foundation


struct Listing : Identifiable, Codable,Hashable {
    let id: String
    let ownerUid: String
    let ownerName:String
    let ownerImageUrl:String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    let pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    var type: ListingType
}


enum ListingFeatures: Int, Codable, Identifiable,Hashable {
    case selfCheckin
    case superHost
    
    var id: Int { return self.rawValue}
    
    var imageName: String {
        switch self {
            case .selfCheckin: return "door.left.hand.open"
            case .superHost: return "medal"
        }
    }    
    
    var title: String {
        switch self {
            case .selfCheckin: return "Self check-in"
            case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
            case .selfCheckin: return "Check yourself in with the keypad."
            case .superHost: return "Superhosts are experienced, highly rated hosts who are committed to providing a great stay for guests"
        }
    }
}

enum ListingAmenities: Int, Codable, Identifiable,Hashable {
    case pool
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var id: Int { return self.rawValue}
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .wifi: return "WiFi"
        case .laundry: return "Laundry"
        case .tv:return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony:return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "drop.fill"
        case .wifi: return "wifi"
        case .laundry: return "t.square.fill"
        case .tv: return "tv.fill"
        case .alarmSystem: return "alarm.fill"
        case .office: return "deskclock.fill"
        case .balcony: return "sun.max.fill"
        }
    }
}


enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var id: Int { return self.rawValue}
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }
}
