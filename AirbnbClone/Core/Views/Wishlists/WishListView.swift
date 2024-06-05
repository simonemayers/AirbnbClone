//
//  WishListView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 29/05/2024.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NotLoggedInView(
            vm: NotLoggedInViewModel(
                page: NotLoggedInViewModel.NotLoggedInPageItem(
                title: "Wishlists",
                subTitle: "Log in to view your wishlists.",
                message: "You can create, view, or edit wishlists once you've logged in."
                )
            )
        )
    }
}

#Preview {
    WishListView()
}
