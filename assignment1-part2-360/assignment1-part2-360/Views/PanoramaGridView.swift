//
//  PanoramaGridView.swift
//  Discover360
//

import SwiftUI

// MARK: - Panorama Grid

struct PanoramaGridView: View {

    private let panoramas = SampleData.panoramas

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    @State
    private var selectedPanorama: Panorama?

    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 12
            ) {
                ForEach(panoramas) { panorama in
                    Button {
                        selectedPanorama = panorama
                    } label: {
                        VStack(alignment: .leading, spacing: 6) {
                            Image(panorama.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 110)
                                .frame(maxWidth: .infinity)
                                .clipped()
                                .clipShape(
                                    RoundedRectangle(
                                        cornerRadius: 12,
                                        style: .continuous
                                    )
                                )

                            Text(panorama.displayName)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundStyle(.primary)
                                .lineLimit(1)
                        }
                        .padding(8)
                        .background(.thinMaterial)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 14,
                                style: .continuous
                            )
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .navigationTitle("Panorama Grid")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $selectedPanorama) { panorama in
            PanoramaDetailView(
                panorama: panorama
            )
        }
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        PanoramaGridView()
    }
}
