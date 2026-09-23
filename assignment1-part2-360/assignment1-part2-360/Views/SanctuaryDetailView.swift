//
//  SanctuaryDetailView.swift
//  Discover360
//

import SwiftUI

// MARK: - Sanctuary Detail

struct SanctuaryDetailView: View {

    let sanctuary: Sanctuary

    @Environment(\.dismiss)
    private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(
                    alignment: .leading,
                    spacing: 18
                ) {
                    Text(sanctuary.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    VStack(
                        alignment: .leading,
                        spacing: 8
                    ) {
                        Text("Features")
                            .font(.headline)

                        Text(
                            sanctuary.features.joined(
                                separator: ", "
                            )
                        )
                    }

                    Label(
                        sanctuary.hasEndangeredSpecies
                            ? "This sanctuary contains endangered species."
                            : "No endangered species are reported.",
                        systemImage: sanctuary.hasEndangeredSpecies
                            ? "exclamationmark.triangle.fill"
                            : "checkmark.circle.fill"
                    )
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(
                        sanctuary.hasEndangeredSpecies
                            ? .red
                            : .green
                    )

                    Spacer(minLength: 20)
                }
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
                .padding()
            }
            .toolbar {
                ToolbarItem(
                    placement: .topBarTrailing
                ) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    SanctuaryDetailView(
        sanctuary: SampleData.sanctuaries[0]
    )
}
