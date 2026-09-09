//
//  Untitled.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-08.
//
import SwiftUI

struct ListExample: View {

    var body: some View {

        List {

            Text("Apple")
            Text("Banana")
            Text("Cherry")
            Text("Orange")
            Text("Mango")
            Text("Strawberry")
        }
        .navigationTitle("List")
    }
}

#Preview {
    ListExample()
}
