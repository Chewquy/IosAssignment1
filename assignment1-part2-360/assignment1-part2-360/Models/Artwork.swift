//
//  Artwork.swift
//  Discover360
//

import Foundation
import MapKit

// MARK: - Artwork Model

struct Artwork: Identifiable {
    let id = UUID()
    let name: String
    let artist: String
    let imageName: String
    let latitude: Double
    let longitude: Double
    var visited: Bool

    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
    }
}
