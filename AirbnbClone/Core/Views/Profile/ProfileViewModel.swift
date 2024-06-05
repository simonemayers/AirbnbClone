//
//  ProfileViewModel.swift
//  AirbnbClone
//
//  Created by Simone Mayers on 6/4/24.
//

import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    
    struct SettingsItem: Identifiable, Hashable {
        let id = UUID()
        let iconName: String
        let title: String
    }

    let paramsSettings: [SettingsItem] = [
        SettingsItem(iconName: "gear", title: "Settings"),
        SettingsItem(iconName: "accessibility", title: "Accessibility"),
        SettingsItem(iconName: "questionmark.circle", title: "Get Help")
    ]
}
