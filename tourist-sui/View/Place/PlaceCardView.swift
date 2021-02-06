//
//  PlaceCardView.swift
//  tourist-sui
//

import SwiftUI

struct PlaceCardView: View {
    
    let travelItem: TravelItem
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                Image(travelItem.imageName)
                    .resizable()
                    .frame(height: 300)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(travelItem.name)
                        .font(.system(size: 44, weight: .bold))
                    
                    HStack {
                        Text(travelItem.date)
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.4), Color.black.opacity(0.01)]),
                        startPoint: .bottom,
                        endPoint: .top)
                )
            }
            
            HStack {
                Image(systemName: "clock")
                    .foregroundColor(.gray)
                Text(travelItem.departureDayLeft)
                Spacer()
                Image(systemName: "square.and.arrow.up.fill")
            }
            .padding()
            .background(Color.white)
        }
        .cornerRadius(20)
    }
}
