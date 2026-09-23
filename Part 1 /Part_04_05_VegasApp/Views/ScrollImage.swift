//
//  ScrollImage.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI

struct ScrollImage: View {
    
    let image: String
    
    var body: some View {
        
        Image(image)
        // Allow the image to change size.
            .resizable()
        
        // Keep the original aspect ratio.
            .scaledToFit()
        
        // Rounded corners.
            .clipShape(
                .rect(cornerRadius: 20)
            )
        
        // Animate the image while scrolling.
        .scrollTransition { content, phase in

            content

                // Normal position = full size.
                // Entering/leaving = smaller.
                .scaleEffect(
                    phase.isIdentity ? 1 : 0.5
                )

                // Normal position = fully visible.
                // Entering/leaving = faded.
                .opacity(
                    phase.isIdentity ? 1 : 0.5
                )
        }
        
    }
}

#Preview {
    ScrollImage(image: "bellagio")
}
