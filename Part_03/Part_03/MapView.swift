//
//  MapView.swift
//  Part_03
//
//  Created by Morteza Khanjanzadeh on 2026-09-14.
//

import SwiftUI
import MapKit

struct MapView: View {

    // Place displayed on map.
    var place: Place


    // Camera position is state
    // because the map can modify it.
    @State
    var position: MapCameraPosition


    var body: some View {

        Map(
            position: $position
        ) {

            Annotation(
                place.interested
                    ? "Place of Interest"
                    : "Not Interested",

                coordinate:
                    place.location
            ) {

                ZStack {

                    // Background
                    RoundedRectangle(
                        cornerRadius: 7
                    )
                    .fill(
                        .ultraThickMaterial
                    )


                    // Border
                    RoundedRectangle(
                        cornerRadius: 7
                    )
                    .stroke(
                        .secondary,
                        lineWidth: 5
                    )


                    // Icon
                    Image(
                        systemName:
                            place.interested
                            ? "face.smiling"
                            : "hand.thumbsdown"
                    )
                    .padding(8)
                }

                // Change interested status
                // when annotation is tapped.
                .onTapGesture {

                    place.interested.toggle()
                }
            }
        }
        .navigationTitle(place.name)
    }
}

#Preview {

    @Previewable
    @State
    var place =
        Place.previewPlaces[0]


    MapView(

        place: place,

        position: .camera(

            MapCamera(

                centerCoordinate:
                    place.location,

                distance: 1000,

                heading: 250,

                pitch: 80
            )
        )
    )
}
