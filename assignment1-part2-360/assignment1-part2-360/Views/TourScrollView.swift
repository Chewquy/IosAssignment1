//
//  TourScrollView.swift
//  Discover360
//

import SwiftUI

// MARK: - Tour Scroll

struct TourScrollView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 24) {
                ForEach(SampleData.panoramas) { panorama in
                    PanoramaScrollImage(
                        panorama: panorama
                    )
                }
            }
            .padding()
        }
        .navigationTitle("Tour (Scroll)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        TourScrollView()
    }
}
