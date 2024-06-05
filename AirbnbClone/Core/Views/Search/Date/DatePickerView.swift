//
//  DatePickerView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct DatePickerView: View {

    @ObservedObject var vm : ExplorerViewModel

    var body: some View {
        VStack {
            
            DatePicker("From", selection: $vm.trip.startDate, in: Date()...Date().nextYear, displayedComponents: .date)
                .datePickerStyle(CompactDatePickerStyle())
                .padding()
                .onTapGesture {
                }
            
            Divider()

            DatePicker("To", selection: $vm.trip.endDate, in: Date()...Date().nextYear, displayedComponents: .date)
                .datePickerStyle(CompactDatePickerStyle())
                .padding()
                
        }
    }
}



#Preview {
    DatePickerView(vm: ExplorerViewModel(service: ExploreService()))
}
