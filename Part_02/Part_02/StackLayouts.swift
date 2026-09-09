//
//  StackLayouts.swift
//  Part_02
//
//  Created by Morteza Khanjanzadeh on 2026-09-09.
//

import SwiftUI

struct StackLayouts: View {

    var body: some View {

        ScrollView {

            VStack(spacing: 40) {

                // MARK: - VStack

                VStack(spacing: 10) {

                    Text("VStack")
                        .font(.title2)
                        .bold()

                    VStack {

                        Text("Top")
                        Text("Middle")
                        Text("Bottom")
                    }
                    .padding()
                    .background(.blue.opacity(0.2))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                }


                // MARK: - HStack

                VStack(spacing: 10) {

                    Text("HStack")
                        .font(.title2)
                        .bold()

                    HStack {

                        Text("Left")

                        Spacer()

                        Text("Center")

                        Spacer()

                        Text("Right")
                    }
                    .padding()
                    .background(.green.opacity(0.2))
                    .clipShape(
                        RoundedRectangle(cornerRadius: 10)
                    )
                }


                // MARK: - ZStack

                VStack(spacing: 10) {

                    Text("ZStack")
                        .font(.title2)
                        .bold()

                    ZStack {

                        RoundedRectangle(cornerRadius: 20)
                            .fill(.purple)
                            .frame(height: 180)

                        Image(systemName: "star.fill")
                            .font(.system(size: 80))
                            .foregroundStyle(.yellow)

                        Text("Hello")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Stack Layouts")
    }
}

#Preview {
    StackLayouts()
}
