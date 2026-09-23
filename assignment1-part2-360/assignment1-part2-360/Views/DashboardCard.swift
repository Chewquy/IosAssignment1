//
//  DashboardCard.swift
//  Discover360
//

import SwiftUI

// MARK: - Dashboard Card

struct DashboardCard: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 32, weight: .semibold))
                .foregroundStyle(.blue)

            Text(title)
                .font(.headline)
                .foregroundStyle(.primary)
                .multilineTextAlignment(.center)

            Text(subtitle)
                .font(.caption)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity, minHeight: 125)
        .padding(12)
        .background(.thinMaterial)
        .clipShape(
            RoundedRectangle(
                cornerRadius: 16,
                style: .continuous
            )
        )
    }
}

// MARK: - Preview

#Preview {
    DashboardCard(
        icon: "photo.on.rectangle.angled",
        title: "Panorama Tour",
        subtitle: "Grid + Full-Screen"
    )
    .padding()
}
