//
//  TopNavigationView.swift
//  tourist-sui
//

import SwiftUI

struct TopNavigationView: View {
    
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation { placeFinder.selectedPlace = nil }
            }, label: {
                Image(systemName: "arrow.left")
                    .padding()
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            Text(placeFinder.selectedPlace?.name ?? "")
                .font(.system(size: 20, weight: .bold))
            
            Spacer()
            
            Image(systemName: "paperplane")
                .padding()
        }
    }
}
