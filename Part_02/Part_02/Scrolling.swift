//
//  Scrolling.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-08.
//

import SwiftUI

struct Scrolling: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                ScrollImage(image: "bellagio")
                ScrollImage(image: "excalibur")
                ScrollImage(image: "luxor")
                ScrollImage(image: "paris")
                ScrollImage(image: "stratosphere")
                ScrollImage(image: "treasureisland")
                
            }
            .padding()
            
        }
        .navigationTitle("Scrolling")
        
    }
    
}

#Preview {
    Scrolling()
}
