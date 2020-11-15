//
//  TravelItem.swift
//  tourist-sui
//


import SwiftUI

struct TravelItem: Identifiable {
    
    var id = UUID().uuidString
    var title : String
    var country : String
    var ratings : String
    var price : String
    var img : String
}


