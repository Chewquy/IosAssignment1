//
//  DashboardView.swift
//  Discover360
//

import SwiftUI

// MARK: - Dashboard

struct DashboardView: View {

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(
                    columns: columns,
                    spacing: 12
                ) {

                    NavigationLink {
                        PanoramaGridView()
                    } label: {
                        DashboardCard(
                            icon: "photo.on.rectangle.angled",
                            title: "Panorama Tour",
                            subtitle: "Grid + Full-Screen"
                        )
                    }
                    .buttonStyle(.plain)

                    NavigationLink {
                        ArtworkGridView()
                    } label: {
                        DashboardCard(
                            icon: "paintpalette",
                            title: "Artworks",
                            subtitle: "Grid + Map"
                        )
                    }
                    .buttonStyle(.plain)

                    NavigationLink {
                        SanctuaryMapView()
                    } label: {
                        DashboardCard(
                            icon: "leaf",
                            title: "Sanctuaries",
                            subtitle: "Interactive Map"
                        )
                    }
                    .buttonStyle(.plain)

                    NavigationLink {
                        TourScrollView()
                    } label: {
                        DashboardCard(
                            icon: "rectangle.stack",
                            title: "Tour (Scroll)",
                            subtitle: "Vertical Gallery"
                        )
                    }
                    .buttonStyle(.plain)
                }
                .padding()
            }
            .navigationTitle("Explorer Dashboard")
        }
    }
}

// MARK: - Preview

#Preview {
    DashboardView()
}
