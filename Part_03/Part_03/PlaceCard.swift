//
//  Untitled.swift
//  Part_03
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI

struct PlaceCard: View {
    
    var place: Place
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            // Place Image - 01 in Hstack
            place.image
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(.rect(cornerRadius: 8))
            
            // Place Info - 02 in Hstack
            VStack(alignment: .leading, spacing: 2) {
                
                Text(place.name)
                    .font(.headline)
                
                Text("( \(place.latitude), \(place.longitude))")
            }
            
            // 03 in Hstack
            Spacer()
            
            // 04 in Hstack
            if place.interested {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
            
        }
        .padding()
    }
}

#Preview {
    PlaceCard(place: Place.previewPlaces[0])
}
