//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 29/05/2024.
//

import SwiftUI

enum DestinationSearchOption {
    case locationOption
    case datesOption
    case guestsOption
}

struct DestinationSearchView: View {
    
    @Binding var show : Bool
    @ObservedObject var vm : ExplorerViewModel
    @State private var selectedDestination: DestinationSearchOption = .locationOption
  
    
    var body: some View {
        VStack (alignment: .center,spacing: 30) {
            HStack {
                xDismissButton(show: $show)
                Spacer()
               
                if !vm.trip.destination.isEmpty {
                    Button{
                        withAnimation(.snappy) {
                            vm.trip.destination = ""
                            vm.updateListingForLocation()
                        }
                    }label: {
                        Text("Clear").foregroundStyle(.black)
                            .font(.footnote)
                    }
                }
            }
            
            
            VStack{
                if( selectedDestination == .locationOption ) {
                    VStack (alignment: .leading) {
                        
                        SearchViewTitle(titleText: "Where to?")
                        
                        DestinationSearchBox(vm: vm, show: $show)
                    }
                }else {
                    if(vm.trip.destination.isEmpty) {
                        CollapsePickerView(title: "Where to?", description: "add destination")
                    } else {
                        CollapsePickerView(title: "Where to?", description: vm.trip.destination)
                    }
                    
                  
                }
            }
            .modifier(CollapsePickerViewModifier())
            .frame(height: selectedDestination == .locationOption ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {selectedDestination = .locationOption}
            }
            
            VStack {
                if(selectedDestination == .datesOption) {
                    VStack (alignment: .leading) {
                        
                        SearchViewTitle(titleText: "When's your trip?")
                        
                        Spacer()
                        
                        DatePickerView(vm: vm)
                    }
                    
                } else {
                    CollapsePickerView(title: "When", description: "\(vm.trip.startDate.formatted(date: .abbreviated, time: .omitted)) - \(vm.trip.endDate.formatted(date: .abbreviated, time: .omitted))")
                        .padding(.vertical)
                }
            }
            .modifier(CollapsePickerViewModifier())
            .frame(height: selectedDestination == .datesOption ? 180 : 50)
            .onTapGesture {
                withAnimation(.snappy) {selectedDestination = .datesOption}
            }
            
            VStack {
                if(selectedDestination == .guestsOption) {
                    VStack (alignment: .leading) {
                        
                        SearchViewTitle(titleText: "Where to?")

                        Spacer()
                        
                        HStack {
                            Stepper(value: $vm.trip.guestCount, in: 0...10, step: 1){
                                Text("\(vm.trip.guestCount) Guests")
                                    .font(.subheadline)
                            }
                        }
                        
                    }
                    
                } else {
                    CollapsePickerView(title: "Who", description: "add guests ")
                }
            }
            .modifier(CollapsePickerViewModifier())
            .frame(height: selectedDestination == .guestsOption ? 120 : 64)
            .onTapGesture {
                 withAnimation(.snappy) {selectedDestination = .guestsOption}
                }
            
            Spacer()
            
        }.padding()
            .overlay(alignment: .bottom){
                HStack {
                    Button {
                        vm.clearSearchView()
                
                    }label: {
                        Text("Clear all")
                            .foregroundStyle(Color.accentColor)
                             .underline()
                    }
                   Spacer()
                    Button {
                        vm.updateListingForLocation()
                        show.toggle()
                    } label: {
                        SearchButton()
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                .frame(height: 70)
                .background(Color(.systemBackground))
            }
            .toolbar(.hidden, for: .tabBar)
            .background(Color(.systemBackground))
        
    
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), vm: ExplorerViewModel(service: ExploreService()))
}












