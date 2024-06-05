//
//  Date+Ext.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

extension Date {
    var tomorrow: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    }
    
    var nextWeek: Date {
        Calendar.current.date(byAdding: .weekOfYear, value: 1, to: Date())!
    }
    
    var nextYear: Date {
        Calendar.current.date(byAdding: .year, value: 1, to: Date())!
    }
}
