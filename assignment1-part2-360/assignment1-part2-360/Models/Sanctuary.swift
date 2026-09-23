//
//  Sanctuary.swift
//  Discover360
//

import Foundation
import MapKit

// MARK: - Sanctuary Model

struct Sanctuary: Identifiable {
    let id = UUID()
    let name: String
    let features: [String]
    let latitude: Double
    let longitude: Double
    let hasEndangeredSpecies: Bool

    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}
