//
//  TravelItem.swift
//  tourist-sui
//

import Foundation
import MapKit

struct TravelItem: Identifiable {
    
    let id = UUID()
    let index: Int
    let name: String
    let date: String
    let imageName: String
    let location: CLLocationCoordinate2D
    let departureDayLeft: String
    let activities: [Activity]
}


