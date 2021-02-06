//
//  Data.swift
//  tourist-sui
//

import SwiftUI
import MapKit

struct Data {
    static let places = [
        TravelItem(index: 0, name: "Cayman Islands", date: "9.3.2020 - 9.8.2020", imageName: "cayman", location: CLLocationCoordinate2D(latitude: 19.328148, longitude:  -81.250054), departureDayLeft: "15 days until departure", activities: caymanActivities),
        // 19.328148, -81.250054
        TravelItem(index: 1, name: "Fiji", date: "1.20.2020 - 1.27.2020", imageName: "fiji", location: CLLocationCoordinate2D(latitude: -17.581885, longitude: 177.898905), departureDayLeft: "1 day until departure", activities: fijiActivities),
        // -17.822605, 177.898905
        TravelItem(index: 2, name: "Maldives", date: "11.10.2020 - 11.15.2020", imageName: "maldives", location: CLLocationCoordinate2D(latitude: -0.635093, longitude: 73.072625), departureDayLeft: "1 month until departure", activities: maldivesActivities),
        // -0.635093, 73.072625
        TravelItem(index: 3, name: "Bora Bora", date: "12.25.2020 - 1.2.2021", imageName: "bora", location: CLLocationCoordinate2D(latitude: -16.496356, longitude:  -151.741053), departureDayLeft: "1 month until Departure", activities: boraActivities),
        // -16.496356, -151.741053
        TravelItem(index: 4, name: "Maui", date: "1.21.2021 - 1.25.2021", imageName: "maui", location: CLLocationCoordinate2D(latitude: 20.865722, longitude:  -156.336447), departureDayLeft: "1 month until departure", activities: mauiActivities)
        // 20.865722, -156.336447
    
    ]
    
    static let fijiActivities = [
        Activity(title: "MARRIOTT RESORT", imageName: "two_star", address: "Savusavu Road Momi Bay, Fiji", duration: "7 Nights", occupancy: "4 People", needBooking: false, price: "$200", previousPrice: "$300"),
        Activity(title: "SNORKLING", imageName: "snorkelers", address: "Rainbow Reef, Taveuni", duration: "2 Hours", occupancy: "2 People", needBooking: false, price: "$0", previousPrice: "$0"),
        Activity(title: "SURFING", imageName: "surfing", address: "Tavarua", duration: "3 Hours", occupancy: "2 People", needBooking: true, price: "$29", previousPrice: "$59")
    ]
    
    static let caymanActivities = [
        Activity(title: "CAYMAN TURTLE CENTRE", imageName: "melia", address: "786 Northwest Point Road, West Bay Grand Cayman", duration: "1 hour", occupancy: "Unlimited", needBooking: false, price: "$50", previousPrice: "$40"),
        Activity(title: "ZIP LINE", imageName: "zip_line", address: "Nuestra Senora de la Altagracia", duration: "2 Hours", occupancy: "2 People", needBooking: false, price: "$0", previousPrice: "$0"),
        Activity(title: "4x4 ATV", imageName: "ATV", address: "Bavaro Racing, Tours Point", duration: "8 Hours", occupancy: "2 People", needBooking: true, price: "$99", previousPrice: "$149")
    ]
    
    static let maldivesActivities = [
        Activity(title: "PRIVATE BOAT SIGHTSEEING", imageName: "melia", address: "North Male Atoll", duration: "2 hours", occupancy: "Unlimited", needBooking: false, price: "$4000", previousPrice: "$5000"),
        Activity(title: "BIRD WATCHING", imageName: "bird", address: "Galápagos Islands, Ecuador", duration: "2 Hours", occupancy: "2 People", needBooking: false, price: "$0", previousPrice: "$0"),
        Activity(title: "SNORKLING", imageName: "snorkelers", address: "Tortuga Bay, Ecuador", duration: "8 Hours", occupancy: "2 People", needBooking: true, price: "$49", previousPrice: "$79")
    ]
    
    static let boraActivities = [
        Activity(title: "VILLA TAINA", imageName: "melia", address: "Cabarete 57000 Dominican Republic", duration: "7 Nights", occupancy: "2 People", needBooking: false, price: "$0", previousPrice: "$0"),
        Activity(title: "MALE FISH MARKET", imageName: "maldives-fish", address: "Boduthakurufaanu Magu, Male'", duration: "Unlimited", occupancy: "Unlimited", needBooking: false, price: "$0", previousPrice: "$0"),
        Activity(title: "SCUBA DIVING", imageName: "snorkelers", address: "Tortuga Bay, Ecuador", duration: "8 Hours", occupancy: "2 People", needBooking: true, price: "$49", previousPrice: "$79")
    ]
    
    static let mauiActivities = [
        Activity(title: "VILLA TAINA", imageName: "melia", address: "Cabarete 57000 Dominican Republic", duration: "7 Nights", occupancy: "2 People", needBooking: false, price: "$0", previousPrice: "$0"),
        Activity(title: "RED LINE RAFTING", imageName: "redline-raft", address: "Kihei, HI, USA", duration: "2 Hours", occupancy: "Unlimited", needBooking: false, price: "$50", previousPrice: "$100"),
        Activity(title: "SNORKLING", imageName: "snorkelers", address: "Tortuga Bay, Ecuador", duration: "8 Hours", occupancy: "2 People", needBooking: true, price: "$49", previousPrice: "$79")
    ]
}
