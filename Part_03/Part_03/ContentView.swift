//
//  ContentView.swift
//  Part_03
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                Section("SwiftData") {
                    NavigationLink("Places from @Query") {
                        PlaceListPreviewShell()
                    }
                }
                
                Section("MapKit") {
                    NavigationLink("Places on Map") {
                        MapDemoView()
                    }
                    
                }
                
            }
            .navigationTitle("iOS Part 03")
            
        }
    }
}
    
#Preview {
    ContentView()
        .modelContainer(Place.preview)
}
