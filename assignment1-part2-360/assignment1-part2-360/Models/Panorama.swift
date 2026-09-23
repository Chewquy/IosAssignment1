//
//  Panorama.swift
//  Discover360
//

import Foundation

// MARK: - Panorama Model

struct Panorama: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let displayName: String
}
