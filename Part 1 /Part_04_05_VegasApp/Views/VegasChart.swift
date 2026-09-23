//
//  VegasChart.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import Charts


// MARK: - Sample Rating Model

struct SampleRating {

    let place: String
    let rating: Int


    static let ratings: [SampleRating] = [

        SampleRating(
            place: "Bellagio",
            rating: 88
        ),

        SampleRating(
            place: "Paris",
            rating: 75
        ),

        SampleRating(
            place: "Treasure Island",
            rating: 33
        ),

        SampleRating(
            place: "Excalibur",
            rating: 99
        )
    ]
}



// MARK: - Vegas Chart

struct VegasChart: View {

    var body: some View {

        VStack {

            Text("Vegas Ratings")
                .font(.title)
                .bold()


            Chart(
                SampleRating.ratings,
                id: \.place
            ) { rating in

                SectorMark(

                    // Controls slice size.
                    angle: .value(
                        "Ratings",
                        rating.rating
                    ),

                    // Creates the donut hole.
                    innerRadius:
                        .ratio(0.25),

                    // Small space between slices.
                    angularInset: 1
                )

                .cornerRadius(7)

                .foregroundStyle(
                    by: .value(
                        "Place",
                        rating.place
                    )
                )
            }

            .padding()

            .frame(
                height: 500
            )
        }
    }
}


#Preview {

    VegasChart()
}
