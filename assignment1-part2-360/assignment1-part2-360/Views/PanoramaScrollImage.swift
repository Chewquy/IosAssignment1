//
//  PanoramaScrollImage.swift
//  Discover360
//

import SwiftUI

// MARK: - Scroll Image

struct PanoramaScrollImage: View {
    let panorama: Panorama

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(panorama.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(
                    RoundedRectangle(
                        cornerRadius: 20,
                        style: .continuous
                    )
                )

            Text(panorama.displayName)
                .font(.headline)
        }
        .scrollTransition { content, phase in
            content
                .scaleEffect(
                    phase.isIdentity ? 1 : 0.75
                )
                .opacity(
                    phase.isIdentity ? 1 : 0.45
                )
        }
    }
}

// MARK: - Preview

#Preview {
    ScrollView {
        PanoramaScrollImage(
            panorama: SampleData.panoramas[0]
        )
        .padding()
    }
}
