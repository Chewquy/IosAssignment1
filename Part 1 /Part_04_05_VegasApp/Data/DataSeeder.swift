//
//  DataSeeder.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import SwiftData


// MARK: - DataSeeder

struct DataSeeder: View {

    // Get the ModelContext injected
    // by VacationApp.
    @Environment(\.modelContext)
    private var context


    // Fetch current Place rows.
    @Query
    private var places: [Place]


    var body: some View {

        // Nothing is displayed.
        EmptyView()

            // Run when this view appears.
            .task {

                // Only seed if database is empty.
                if places.isEmpty {

                    for p in Place.previewPlaces {

                        let place = Place(

                            name: p.name,

                            latitude:
                                p.latitude,

                            longitude:
                                p.longitude,

                            interested:
                                false
                        )


                        context.insert(
                            place
                        )
                    }


                    // Save to the persistent database.
                    try? context.save()
                }
            }
    }
}
