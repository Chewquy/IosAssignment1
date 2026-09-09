//
//  GridExample3.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-08.
//

import SwiftUI

struct GridExample3: View {

    // Box titles
    let boxes = [
        "Box 1",
        "Box 2",
        "Box 3",
        "Box 4",
        "Box 5",
        "Box 6"
    ]

    // Two equal-width columns
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        LazyVGrid(columns: columns, spacing: 14) {

            ForEach(boxes, id: \.self) { box in

                Text(box)
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 90)
                    .background(Color.blue)
                    .cornerRadius(12)
            }
        }
        .padding()
    }
}

#Preview {
    GridExample3()
}
