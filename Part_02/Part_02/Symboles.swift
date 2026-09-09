//
//  Symboles.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI

struct Symboles: View {

    // State variable used to control the animation.
    @State private var shouldIBounce = false

    var body: some View {

        ScrollView {

            VStack(spacing: 35) {

                // MARK: - Basic SF Symbol

                Text("Basic SF Symbol")
                    .font(.headline)

                Image(systemName: "globe")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)


                // MARK: - Pulse Effect

                Text("Pulse Effect")
                    .font(.headline)

                Image(systemName: "heart.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(.red)
                    .symbolEffect(.pulse)


                // MARK: - State + Bounce

                Text("Tap the Bell")
                    .font(.headline)

                Image(systemName: "bell.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(.orange)

                    // Animation is triggered whenever
                    // shouldIBounce changes.
                    .symbolEffect(
                        .bounce,
                        value: shouldIBounce
                    )

                    // Change the state when user taps.
                    .onTapGesture {
                        shouldIBounce.toggle()
                    }


                // MARK: - Multicolor Symbol

                Text("Multicolor SF Symbol")
                    .font(.headline)

                Image(systemName: "cloud.sun.rain.fill")
                    .font(.system(size: 70))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(
                        .gray,
                        .yellow,
                        .mint
                    )
            }
            .padding()
        }
        .navigationTitle("SF Symbols")
    }
}

#Preview {
    Symboles()
}
