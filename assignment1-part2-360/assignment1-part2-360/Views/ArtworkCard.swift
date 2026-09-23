//
//  ArtworkCard.swift
//  Discover360
//

import SwiftUI

// MARK: - Artwork Card

struct ArtworkCard: View {

    @Binding var artwork: Artwork

    let onOpenMap: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            Button {
                onOpenMap()
            } label: {
                VStack(alignment: .leading, spacing: 8) {

                    Image(artwork.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 10
                            )
                        )

                    Text(artwork.name)
                        .font(.headline)
                        .foregroundStyle(.primary)

                    Text(artwork.artist)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
            }
            .buttonStyle(.plain)

            Button {
                artwork.visited.toggle()
            } label: {
                Label(
                    artwork.visited ? "Visited" : "View on Map",
                    systemImage: artwork.visited
                        ? "checkmark.circle.fill"
                        : "mappin.and.ellipse"
                )
                .font(.caption)
                .fontWeight(.medium)
                .foregroundStyle(
                    artwork.visited ? .green : .blue
                )
            }
            .buttonStyle(.plain)
        }
        .padding(10)
        .background(.thinMaterial)
        .clipShape(
            RoundedRectangle(
                cornerRadius: 14
            )
        )
    }
}
