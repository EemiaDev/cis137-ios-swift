//
//  ContentView.swift
//  Midterm_AimeeJin
//
//  Midterm Project
//  Aimee Jin
//  10/27/2026
//

import SwiftUI


struct ContentView: View {
    let subjects = Bundle.main.decode([Subject].self, from: "Data.json")

    var body: some View {
        NavigationStack {
            List {
                ForEach(subjects) { subject in
                    NavigationLink(destination: DetailView(subject: subject)) {
                        HStack(spacing: 16) {
                            Image(subject.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text("Day \(subject.day): \(subject.name)")
                                .bold()
                        }
                    }
                }
            }
            .navigationTitle("Aimee's Oahu Diary")
        }
    }
}

struct DetailView: View {
    let subject: Subject

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(subject.imageName)
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                Text(subject.name)
                    .font(.title)
                    .bold()

                Text(subject.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Day \(subject.day)")
    }
}


#Preview {
    ContentView()
}
