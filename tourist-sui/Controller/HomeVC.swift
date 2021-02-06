//
//  HomeVC.swift
//  tourist-sui
//

import SwiftUI
import MapKit

struct HomeVC: View {
    
    @StateObject var placeFinder = PlaceFinder()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            Map(coordinateRegion: $placeFinder.region, annotationItems: placeFinder.spots) { spot in
                MapAnnotation(coordinate: spot.location, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                    MapMarker(placeName: spot.name)
                }
            }
            .ignoresSafeArea()
            
            PlaceBottomSliderView(
                count: placeFinder.spots.count,
                index: $placeFinder.currentIndex,
                viewWidth: UIScreen.screenWidth - 40,
                content: {
                ForEach(placeFinder.spots) { travelItem in
                    PlaceCardView(travelItem: travelItem)
                        .frame(width: UIScreen.screenWidth - 60, height: 400)
                        .onTapGesture {
                            withAnimation {
                                placeFinder.selectedPlace = travelItem
                            }
                        }
                }
            })
                .opacity(placeFinder.selectedPlace == nil ? 1.0 : 0.0)
            
            
            if placeFinder.selectedPlace != nil {
                DetailTravelView(placeFinder: placeFinder)
            }
        }
        .onAppear {
            placeFinder.currentIndex = 0
        }
    }
}

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}

//struct HomeVC_Previews: PreviewProvider {
//    static var previews: some View {
//            ForEach(MyDeviceNames.all, id: \.self) { devicesName in
//                HomeVC()
//                    .previewDevice(PreviewDevice(rawValue: devicesName))
//                    .previewDisplayName(devicesName)
//            }
//        }
//}




