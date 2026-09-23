//
//  SanctuaryMapView.swift
//  Discover360
//

import SwiftUI
import MapKit

// MARK: - Sanctuary Map

struct SanctuaryMapView: View {

    @State
    private var selectedSanctuary: Sanctuary?

    @State
    private var position: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 39.5,
                longitude: -98.35
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 30,
                longitudeDelta: 55
            )
        )
    )

    var body: some View {
        Map(position: $position) {
            ForEach(SampleData.sanctuaries) { sanctuary in
                Annotation(
                    sanctuary.name,
                    coordinate: sanctuary.location
                ) {
                    Button {
                        selectedSanctuary = sanctuary
                    } label: {
                        VStack(spacing: 4) {
                            Image(systemName: "leaf.fill")
                                .font(.title3)

                            Text(sanctuary.name)
                                .font(.caption2)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)

                            if sanctuary.hasEndangeredSpecies {
                                Text("Endangered Species")
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                            }
                        }
                        .foregroundStyle(
                            sanctuary.hasEndangeredSpecies
                                ? .red
                                : .green
                        )
                        .padding(7)
                        .background(.regularMaterial)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 10,
                                style: .continuous
                            )
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .navigationTitle("Wildlife Sanctuary Explorer")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $selectedSanctuary) { sanctuary in
            SanctuaryDetailView(
                sanctuary: sanctuary
            )
        }
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        SanctuaryMapView()
    }
}
