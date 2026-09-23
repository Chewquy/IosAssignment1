//
//  Place.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import SwiftData
import MapKit

@Model
class Place {
    
    // Stored Properties
    @Attribute(.unique)
    var name: String
    
    var latitude: Double
    var longitude: Double
    var interested: Bool
    
    // Computed Properties
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
}

extension Place {
    static var previewPlaces: [Place] {
        [
            Place(
                name: "Bellagio",
                latitude: 36.1129,
                longitude: -115.1765,
                interested: true
            ),

            Place(
                name: "Paris",
                latitude: 36.1125,
                longitude: -115.1707,
                interested: true
            ),

            Place(
                name: "Treasure Island",
                latitude: 36.1247,
                longitude: -115.1721,
                interested: false
            ),

            Place(
                name: "Stratosphere",
                latitude: 36.1475,
                longitude: -115.1566,
                interested: false
            ),

            Place(
                name: "Luxor",
                latitude: 36.0955,
                longitude: -115.1761,
                interested: false
            ),

            Place(
                name: "Excalibur",
                latitude: 36.0988,
                longitude: -115.1754,
                interested: true
            )
        ]
    }
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: Place.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
            )
        
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        
        return container
    }
}
