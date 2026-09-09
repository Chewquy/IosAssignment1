//
//  LazyGrid.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-08.
//

import SwiftUI

struct GridExample: View {

    // Two flexible columns.
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        ScrollView {

            LazyVGrid(
                columns: columns,
                spacing: 20
            ) {

                ForEach(1..<7) { i in

                    Text("Box \(i)")
                        .font(.headline)
                        .frame(
                            maxWidth: .infinity,
                            minHeight: 120
                        )
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 15
                            )
                        )
                }
            }
            .padding()
        }
        .navigationTitle("LazyVGrid")
    }
}

#Preview {
    GridExample()
}
