//
//  PlaceList.swift
//  Part_04_05_VegasApp
//
//  Created by Morteza Khanjanzadeh on 2026-09-16.
//

import SwiftUI
import SwiftData
import MapKit


// MARK: - PlaceList

struct PlaceList: View {


    // Used for the zoom navigation transition.
    @Namespace
    private var namespace


    // Fetch all places from SwiftData
    // and sort alphabetically by name.
    @Query(sort: \Place.name)
    private var places: [Place]


    // MARK: - UI State

    // Controls the image gallery sheet.
    @State
    private var showImages = false


    // Stores text entered in the search bar.
    @State
    private var searchText = ""


    // false = show all places
    // true = show interested places only
    @State
    private var filterByInterested = false



    // MARK: - Filtering

    private var filteredPlaces: [Place] {

        places.filter { place in


            // MARK: Search Condition

            let matchesSearch =
                searchText.isEmpty ||
                place.name.localizedStandardContains(
                    searchText
                )


            // MARK: Interested Condition

            let matchesInterest =
                !filterByInterested ||
                place.interested


            // Place must satisfy both conditions.
            return matchesSearch &&
                   matchesInterest
        }
    }



    // MARK: - Body

    var body: some View {

        NavigationStack {

            List(filteredPlaces) { place in


                // MARK: - NavigationLink

                NavigationLink(
                    value: place
                ) {


                    // MARK: - Reusable Place Row

                    PlaceCard(
                        place: place
                    )

                    // Each place gets its own
                    // navigation-transition source.
                    .matchedTransitionSource(
                        id: place.name,
                        in: namespace
                    )
                }


                // MARK: - Swipe Action

                .swipeActions(
                    edge: .trailing
                ) {

                    Button {

                        // Update SwiftData model.
                        place.interested.toggle()

                    } label: {

                        Label(
                            place.interested
                            ? "Interested"
                            : "Not Interested",

                            systemImage:
                                place.interested
                                ? "star.fill"
                                : "star"
                        )
                    }

                    .tint(
                        place.interested
                        ? .yellow
                        : .gray
                    )
                }
            }


            // MARK: - Navigation Title

            .navigationTitle(
                "Places"
            )


            // MARK: - Search

            .searchable(
                text: $searchText,
                prompt: "Find a Place"
            )


            // Animate changes to the filtered list.
            .animation(
                .default,
                value: searchText
            )


            .animation(
                .default,
                value: filterByInterested
            )


            // MARK: - Navigation Destination

            .navigationDestination(
                for: Place.self
            ) { place in

                MapView(

                    place: place,

                    position: .camera(

                        MapCamera(

                            centerCoordinate:
                                place.location,

                            distance: 1000,

                            heading: 250,

                            pitch: 80
                        )
                    )
                )


                // Zoom from the selected PlaceCard
                // to the MapView.
                .navigationTransition(

                    .zoom(
                        sourceID: place.name,
                        in: namespace
                    )
                )
            }


            // MARK: - Toolbar

            .toolbar {


                // MARK: Interested Filter

                ToolbarItem(
                    placement:
                        .navigationBarLeading
                ) {

                    Button {

                        withAnimation {

                            filterByInterested
                                .toggle()
                        }

                    } label: {

                        Label(
                            "Filter",
                            systemImage:
                                filterByInterested
                                ? "star.fill"
                                : "star"
                        )
                    }

                    .tint(
                        filterByInterested
                        ? .yellow
                        : .blue
                    )
                }



                // MARK: Image Gallery

                ToolbarItem(
                    placement:
                        .navigationBarTrailing
                ) {

                    Button(
                        "Show Images",
                        systemImage: "photo"
                    ) {

                        showImages.toggle()
                    }
                }
            }


            // MARK: - Image Gallery Sheet

            .sheet(
                isPresented: $showImages
            ) {

                Scrolling()
            }
        }
    }
}


// MARK: - Preview

#Preview {

    PlaceList()
        .modelContainer(
            Place.preview
        )
}
