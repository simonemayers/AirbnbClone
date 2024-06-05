//
//  DestinationSearchViewTitle.swift
//  AirbnbClone
//
//  Created by Simone mayers on 6/4/24.
//

import Foundation
import SwiftUI

struct SearchViewTitle: View {
    var titleText: String
    var body: some View {
        Text(titleText)
            .font(.title2)
            .fontWeight(.semibold)
    }
}
