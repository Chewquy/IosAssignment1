//
//  ContentView.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import SwiftData


// MARK: - ContentView

struct ContentView: View {

    var body: some View {

        TabView {


            // MARK: - Tab 1: Places

            Tab(
                "Places",
                systemImage: "photo"
            ) {

                PlaceList()
            }



            // MARK: - Tab 2: Trip History

            Tab(
                "Trip History",
                systemImage:
                    "chart.line.uptrend.xyaxis"
            ) {

                TripsChart()
            }
        }

        .preferredColorScheme(.dark)
    }
}


// MARK: - Preview

#Preview {

    ContentView()

        .modelContainer(
            Place.preview
        )
}
