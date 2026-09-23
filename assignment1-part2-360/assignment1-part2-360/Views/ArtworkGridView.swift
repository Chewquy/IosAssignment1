//
//  ArtworkGridView.swift
//  Discover360
//

import SwiftUI

// MARK: - Artwork Grid

struct ArtworkGridView: View {

    @State
    private var artworks = SampleData.artworks

    @State
    private var selectedArtwork: Artwork?

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 12
            ) {
                ForEach($artworks) { $artwork in
                    ArtworkCard(
                        artwork: $artwork
                    ) {
                        selectedArtwork = artwork
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Artworks")
        .sheet(item: $selectedArtwork) { artwork in
            ArtworkMapView(
                artwork: artwork
            )
        }
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        ArtworkGridView()
    }
}
