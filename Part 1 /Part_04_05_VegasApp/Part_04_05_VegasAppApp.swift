//
//  Part_04_05_VegasAppApp.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import SwiftData

@main
struct Part_04_05_VegasAppApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Place.self,
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .overlay {
                    DataSeeder()
                }
            
        }
        .modelContainer(sharedModelContainer)
    }
}
