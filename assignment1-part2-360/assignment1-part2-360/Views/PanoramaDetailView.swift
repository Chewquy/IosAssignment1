//
//  PanoramaDetailView.swift
//  Discover360
//

import SwiftUI

// MARK: - Panorama Detail

struct PanoramaDetailView: View {

    let panorama: Panorama

    @Environment(\.dismiss)
    private var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()

                Image(panorama.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(
                        RoundedRectangle(
                            cornerRadius: 16,
                            style: .continuous
                        )
                    )
                    .padding(.horizontal)

                Text(panorama.displayName)
                    .font(.title2)
                    .fontWeight(.semibold)

                Spacer()
            }
            .navigationTitle(panorama.displayName)
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
    PanoramaDetailView(
        panorama: SampleData.panoramas[0]
    )
}
