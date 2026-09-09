//
//  CounterView.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI

struct CounterView: View {

    // State belongs to this view.
    @State private var count = 0

    var body: some View {

        VStack(spacing: 30) {

            Text("Count: \(count)")
                .font(.largeTitle)


            Button("Increase") {

                // Updating the state automatically
                // updates the screen.
                count += 1
            }
            .buttonStyle(.borderedProminent)


            Button("Reset") {
                count = 0
            }
            .buttonStyle(.bordered)
        }
        .navigationTitle("@State")
    }
}

#Preview {
    CounterView()
}
