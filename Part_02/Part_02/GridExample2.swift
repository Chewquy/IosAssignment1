//
//  GridExample2.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-08.
//

import SwiftUI

struct GridExample2: View {

    // Two equal-width columns
    private let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]

    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 14) {

                box(title: "Box 1")
                box(title: "Box 2")

                box(title: "Box 3")
                box(title: "Box 4")

                box(title: "Box 5")
                box(title: "Box 6")
            }
            .padding(.horizontal, 5)
            .padding(.top, 18)

            Spacer()
        }
        .background(Color.white)
    }

    // Reusable box
    private func box(title: String) -> some View {
        Text(title)
            .font(.system(size: 13, weight: .semibold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    GridExample2()
}
