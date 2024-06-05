//
//  StepperView.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct StepperView: View {
    @State var value = 1
    let step = 1
    var body: some View {
        Stepper("", value: $value, step: step) 
    }
    
    func incrementStep(){
        value += 1
    }
    
    func decrementStep(){
        if value > 0{
            value -= 1
        } else{
            return
        }
    }
}
