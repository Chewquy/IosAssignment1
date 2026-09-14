//
//  Part_03App.swift
//  Part_03
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI
import SwiftData

@main
struct Part_03App: App {


    var body: some Scene {
        WindowGroup {
            ContentView()
            // For this lecture project:
            // use temporary in-memory sample data.
            .modelContainer(Place.preview)
        }
    }
}
