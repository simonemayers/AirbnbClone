//
//  DatePickerView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct DatePickerView: View {
    @Binding var startDate: Date
    @Binding var endDate: Date

    var body: some View {
        VStack {
            DatePicker("From", selection: $startDate, in: Date()...Date().nextYear, displayedComponents: .date)
                .datePickerStyle(CompactDatePickerStyle())
            
            Divider()
            DatePicker("To", selection: $endDate, in: Date()...Date().nextYear, displayedComponents: .date)
                .datePickerStyle(CompactDatePickerStyle())
                
        }
        .onAppear{
            startDate = DateFormatter.customDate.date(from: DateFormatter.customDate.string(from: startDate)) ?? startDate
            
            endDate = DateFormatter.customDate.date(from: DateFormatter.customDate.string(from: endDate)) ?? endDate
        }
        
        
    }
}



#Preview {
    DatePickerView(startDate: .constant(Date()), endDate: .constant(Date().addingTimeInterval(86400)))}
