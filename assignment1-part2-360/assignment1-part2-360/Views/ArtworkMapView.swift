//
//  ArtworkMapView.swift
//  Discover360
//

import SwiftUI
import MapKit

// MARK: - Artwork Map

struct ArtworkMapView: View {

    let artwork: Artwork

    @Environment(\.dismiss)
    private var dismiss

    @State
    private var position: MapCameraPosition

    init(artwork: Artwork) {
        self.artwork = artwork

        _position = State(
            initialValue: .region(
                MKCoordinateRegion(
                    center: artwork.location,
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.08,
                        longitudeDelta: 0.08
                    )
                )
            )
        )
    }

    var body: some View {
        NavigationStack {
            Map(position: $position) {
                Annotation(
                    artwork.name,
                    coordinate: artwork.location
                ) {
                    VStack(spacing: 4) {
                        Image(systemName: "mappin.circle.fill")
                            .font(.title)
                            .foregroundStyle(.red)

                        VStack(spacing: 1) {
                            Text(artwork.name)
                                .font(.caption)
                                .fontWeight(.bold)

                            Text(artwork.artist)
                                .font(.caption2)
                        }
                        .padding(6)
                        .background(.regularMaterial)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 8,
                                style: .continuous
                            )
                        )
                    }
                }
            }
            .navigationTitle(artwork.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(
                    placement: .topBarTrailing
                ) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    ArtworkMapView(
        artwork: SampleData.artworks[0]
    )
}
