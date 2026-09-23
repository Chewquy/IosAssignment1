//
//  TripsChart.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import Charts


// MARK: - Sample Data Model

struct SampleTripRating {

    let trip: Int
    let rating: Int


    static let ratings: [SampleTripRating] = [

        SampleTripRating(
            trip: 1,
            rating: 55
        ),

        SampleTripRating(
            trip: 2,
            rating: 27
        ),

        SampleTripRating(
            trip: 3,
            rating: 67
        ),

        SampleTripRating(
            trip: 4,
            rating: 72
        ),

        SampleTripRating(
            trip: 5,
            rating: 81
        )
    ]
}



// MARK: - Trips Chart

struct TripsChart: View {

    var body: some View {

        VStack {

            Text("Trip Ratings")
                .font(.title)
                .bold()


            Chart {

                // MARK: Bar Chart

                ForEach(
                    SampleTripRating.ratings,
                    id: \.trip
                ) { rating in

                    BarMark(

                        x: .value(
                            "Trip",
                            rating.trip
                        ),

                        y: .value(
                            "Rating",
                            rating.rating
                        )
                    )
                }


                // MARK: Trend Line

                ForEach(1...5, id: \.self) { trip in

                    LineMark(

                        x: .value(
                            "Trip",
                            trip
                        ),

                        y: .value(
                            "Trend",
                            trip * 6 + 50
                        )
                    )
                    .foregroundStyle(.purple)
                }
            }

            .chartXScale(
                domain: 1...5
            )

            .chartYScale(
                domain: 1...100
            )

            .padding()
        }
    }
}


#Preview {

    TripsChart()
}
