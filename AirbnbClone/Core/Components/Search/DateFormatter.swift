//
//  DateFormatter.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation

extension DateFormatter {
    static let customDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium 
        formatter.dateFormat = "MMM d y"
        return formatter
    }()
}

