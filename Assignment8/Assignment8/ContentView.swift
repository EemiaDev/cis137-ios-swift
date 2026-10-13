//
//  ContentView.swift
//  Assignment8
//
//  Assignment# 8
//  Aimee Jin
//  10/12/2026
//
//  Modification:
//  Replaced the Home with Travel.
//  Tapping Travel navigates to three destinations loaded from travel.json.
//  Tapping destination navigates to places to visit with thumbnail images.
//

import SwiftUI

let travel = Bundle.main.decode([MenuSection].self, from:"travel.json")

struct CarView: View {
    var body: some View {
        List {
            HStack {
                Image("Cars-Tesla-Model-Y")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("Tesla Model Y")
            }
            HStack {
                Image("Cars-Ford-Mustang")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("Ford Mustang")
            }
            HStack {
                Image("Cars-RAV4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("Toyota RAV4")
            }
        }
    }
}

struct TravelView: View {
    var body: some View {
        List {
            ForEach(travel) { section in
                NavigationLink(destination: {
                    List {
                        ForEach(section.items) { item in
                            HStack {
                                Image(item.thumbnailImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                Text(item.name)
                            }
                        }
                    }
                    .navigationTitle(section.name)
                }) {
                    Text(section.name)
                }
            }
        }
        .navigationTitle("Travel")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CarView()) {
                    HStack {
                        Image(systemName:"car.fill")
                            .frame(width: 24)
                        Text("Cars")
                    }
                }
                HStack {
                    Image(systemName:"figure.run")
                        .frame(width: 24)
                    Text("Fitness")
                }
                HStack {
                    Image(systemName:"fork.knife")
                        .frame(width: 24)
                    Text("Food")
                }
                NavigationLink(destination: TravelView()) {
                    HStack {
                        Image(systemName:"airplane")
                            .frame(width: 24)
                        Text("Travel")
                    }
                }
            }.navigationTitle(Text("Home"))
        }
    }
}

#Preview {
    ContentView()
}
