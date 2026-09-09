//
//  Scrolling2.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-08.
//

import SwiftUI

struct Scrolling2: View {

    // List of image names from Assets.xcassets
    let images = [
        "bellagio",
        "excalibur",
        "luxor",
        "paris",
        "stratosphere",
        "treasureisland"
    ]

    // Two equal-width columns
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns, spacing: 14) {

                ForEach(images, id: \.self) { image in

                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 120)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                }
            }
            .padding()
        }
        .navigationTitle("Images")
    }
}

#Preview {
    Scrolling2()
}
