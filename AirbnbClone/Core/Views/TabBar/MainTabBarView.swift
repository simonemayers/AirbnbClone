//
//  MainTabBarView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 29/05/2024.
//

import SwiftUI

struct MainTabBarView: View {
    var vm = ExplorerViewModel(service: ExploreService())
        
    var body: some View {
            TabView  {
                ExplorerView(vm: vm)
                    .tabItem { Label ("Explore", systemImage: "magnifyingglass") }
                
                WishListView()
                    .tabItem { Label ("Wishlist", systemImage: "suit.heart") }
                
                TripsView()
                    .tabItem { Label ("Trips", systemImage: "paperplane") }
                
                InboxView()
                    .tabItem { Label ("Inbox", systemImage: "message") }
                
                ProfileView()
                    .tabItem { Label ("Profile", systemImage: "person") }
            }
        
    }
}

#Preview {
    MainTabBarView()
}



enum TabbedItems: Int, CaseIterable{
    case explore = 0
    case wishlists
    case trips
    case inbox
    case profile
    
    var title: String{
        switch self {
        case .explore:
            return "Explore"
        case .wishlists:
            return "Wishlists"
        case .trips:
            return "Tripes"
        case .inbox:
            return "Inbox"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .explore:
            return "magnifyingglass"
        case .wishlists:
            return "suit.heart"
        case .trips:
            return "paperplane"
        case .inbox:
            return "message"
        case .profile:
            return "person"
        }
    }
    
}

struct CustomMainTabBarView: View {
    @State var selectedTab = 0
    var vm = ExplorerViewModel(service: ExploreService())
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView( selection: $selectedTab)  {
                ExplorerView(vm: vm)
                    .tag(0)
        
                WishListView()
                    .tag(1)
                
                TripsView()
                    .tag(2)
                
                InboxView()
                    .tag(3)
                
                ProfileView()
                    .tag(4)
            }
            
            HStack(alignment: .bottom, spacing: 30){
                ForEach((TabbedItems.allCases), id: \.self){ item in
                    Button{
                        selectedTab = item.rawValue
                    } label: {
                        VStack {
                            Image(systemName: item.iconName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 22, height: 22)
                                .foregroundColor(selectedTab == item.rawValue ? Color.accentColor : .gray)

                            Text(item.title)
                                .font(.footnote)
                                .foregroundColor(selectedTab == item.rawValue ? Color.accentColor : .gray)

                        }
                    }
                }
            }
          
            
            
        }
   }
}
