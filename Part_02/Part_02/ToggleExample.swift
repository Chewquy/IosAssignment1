//
//  ToggleExample.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI

struct ToggleExample: View {

    // State variable
    @State private var isOn = false

    var body: some View {

        VStack(spacing: 30) {

            // Toggle requires a Binding.
            Toggle(
                "Switch",
                isOn: $isOn
            )
            .padding()


            // UI changes depending on state.
            if isOn {

                Text("Switch is ON")
                    .font(.title)
                    .foregroundStyle(.green)

                Image(systemName: "lightbulb.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.yellow)

            } else {

                Text("Switch is OFF")
                    .font(.title)
                    .foregroundStyle(.red)

                Image(systemName: "lightbulb")
                    .font(.system(size: 70))
                    .foregroundStyle(.gray)
            }
        }
        .padding()
        .navigationTitle("Toggle & Binding")
    }
}

#Preview {
    ToggleExample()
}
