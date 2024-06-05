//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Simone Mayers  on 28/05/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var listing: Listing
    var canBeShared = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 10) {
                ListingItemCarouselView()
                        .frame(height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                
                HStack(alignment: .top){
                    VStack(alignment: .leading,spacing: 7) {
                        Text("\(listing.city) \(listing.address)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.text)
                        Text(listing.title)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.text)
                        Text("Hosted by \(listing.ownerName) - \(listing.city) ")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        HStack(spacing: 4){
                            Text("$\(listing.pricePerNight)").fontWeight(.semibold)
                            Text("Night")
                                
                        }.foregroundStyle(Color.text)
                    }
                   
                    Spacer()
                    
                    HStack{
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                        Text("\(listing.rating.formatted())")
                            .foregroundStyle(Color.text)

                    }
                    
                }.font(.footnote)
            }
            
            if(canBeShared) {
                Button{
                    
                }label: {
                    Image(systemName: "square.and.arrow.up.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35,height: 35)
                        .foregroundColor(Color.text)
                        .padding()
                }
            }
       
        }
    }
}

#Preview {
    ListingItemView( listing: DeveloperPreview.shared.mockListings[0])
}
