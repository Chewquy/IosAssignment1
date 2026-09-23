//
//  SampleData.swift
//  Discover360
//

import Foundation

// MARK: - Sample Data

enum SampleData {

    // MARK: Panoramas

    static let panoramas: [Panorama] = [
        Panorama(
            imageName: "central_park",
            displayName: "Central Park"
        ),
        Panorama(
            imageName: "golden_gate",
            displayName: "Golden Gate"
        ),
        Panorama(
            imageName: "grand_canyon",
            displayName: "Grand Canyon"
        ),
        Panorama(
            imageName: "niagara_falls",
            displayName: "Niagara Falls"
        ),
        Panorama(
            imageName: "statue_of_liberty",
            displayName: "Statue of Liberty"
        ),
        Panorama(
            imageName: "times_square",
            displayName: "Times Square"
        )
    ]

    // MARK: Artworks
    // If your artwork assets have different names, change ONLY
    // the three imageName strings below.

    static let artworks: [Artwork] = [
        Artwork(
            name: "Mural1",
            artist: "Artist A",
            imageName: "Mural1",
            latitude: 40.7128,
            longitude: -74.0060,
            visited: false
        ),
        Artwork(
            name: "Mural2",
            artist: "Artist B",
            imageName: "Mural2",
            latitude: 34.0522,
            longitude: -118.2437,
            visited: true
        ),
        Artwork(
            name: "Mural3",
            artist: "Artist C",
            imageName: "Mural3",
            latitude: 51.5074,
            longitude: -0.1278,
            visited: false
        )
    ]

    // MARK: Sanctuaries

    static let sanctuaries: [Sanctuary] = [
        Sanctuary(
            name: "Yellowstone National Park",
            features: ["Bird Watching", "Hiking"],
            latitude: 44.4280,
            longitude: -110.5885,
            hasEndangeredSpecies: true
        ),
        Sanctuary(
            name: "Everglades National Park",
            features: ["Swamp Tours", "Endangered Species"],
            latitude: 25.2866,
            longitude: -80.8987,
            hasEndangeredSpecies: true
        ),
        Sanctuary(
            name: "Grand Canyon National Park",
            features: ["Scenic Views", "Trails"],
            latitude: 36.1069,
            longitude: -112.1129,
            hasEndangeredSpecies: false
        )
    ]
}
