//
//  MapDemoView.swift
//  Part_03
//
//  Created by Morteza Khanjanzadeh on 2026-09-14.
//

import SwiftUI
import SwiftData
import MapKit

struct MapDemoView: View {

    @Query(
        sort: \Place.name
    )
    private var places: [Place]


    var body: some View {

        List(places) { place in

            NavigationLink {

                MapView(

                    place: place,

                    position: .camera(

                        MapCamera(

                            centerCoordinate:
                                place.location,

                            distance: 1000,

                            heading: 0,

                            pitch: 45
                        )
                    )
                )

            } label: {

                PlaceCard(
                    place: place
                )
            }
        }
        .navigationTitle("MapKit")
    }
}


#Preview {

    NavigationStack {

        MapDemoView()
    }
    .modelContainer(
        Place.preview
    )
}
