//
//  DetailTravelView.swift
//  tourist-sui
//

import SwiftUI

struct DetailTravelView: View {
    
    @ObservedObject var placeFinder: PlaceFinder
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.5))
                .ignoresSafeArea()
            VStack {
                TopNavigationView(placeFinder: placeFinder)
                ScrollView(.vertical, showsIndicators: false) {
                    
                    ForEach(placeFinder.selectedPlace?.activities ?? []) { activity in
                        ActivityView(activity: activity)
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

//struct DetailTravelView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailTravelView()
//    }
//}
