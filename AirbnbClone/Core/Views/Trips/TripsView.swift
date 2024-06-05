//
//  TripsView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import SwiftUI

struct TripsView: View {
    var body: some View {
        NotLoggedInView(
            vm: NotLoggedInViewModel(
                page: NotLoggedInViewModel.NotLoggedInPageItem(
                    title: "Trips",
                    subTitle: "No trips yet.",
                    message: "When your're ready to plan your next trip, we here to help."
                )
            )
        )
    }
}

#Preview {
    TripsView()
}
