//
//  PlaceListPreviewShell.swift
//  Part_03
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI
import SwiftData

struct PlaceListPreviewShell: View {
    
    @Query(sort: \Place.name)
    private var places: [Place]
    
    var body: some View {
        
        List(places) {place in
            PlaceCard(place: place)
        }
        .navigationTitle("Places")
    }
}

#Preview("List of Places") {
    PlaceListPreviewShell()
        .modelContainer(Place.preview)
}

