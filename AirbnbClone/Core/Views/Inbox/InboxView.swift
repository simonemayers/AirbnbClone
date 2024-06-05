//
//  InboxView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 30/05/2024.
//

import SwiftUI

struct InboxView: View {
    
    var body: some View {
        NotLoggedInView(
            vm: NotLoggedInViewModel(
                page: NotLoggedInViewModel.NotLoggedInPageItem(
                    title: "Inbox",
                    subTitle: "Log in to see messages.",
                    message: "Once you login, you'll find messages from hosts here."
                )
            )
        )
    }
}

#Preview {
    InboxView()
}
