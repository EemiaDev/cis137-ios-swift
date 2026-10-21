//
//  ContentView.swift
//  Lab2
//  Aimee Jin
//  10/20/26
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🐭", "🦊", "🐼", "🐯", "🦁", "🐷", "🐵", "🐨", "🐰"]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            Text("Game")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .bold()

            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(emojis [0..<emojis.count], id: \.self) { im in
                    EmojiCards(content: im)
                        .aspectRatio(1,contentMode: .fit)
                }
            }
            .padding(.horizontal)
        }
    }
}


struct EmojiCards: View {
    var content: String
    @State private var isFaceUp: Bool = true

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 8)

            shape
                .stroke(lineWidth: 3)
                .foregroundStyle(.blue)
            Text(content)
                .font(.system(size: 64))
                .padding()

            if isFaceUp {
                shape.fill(.blue).opacity(0)
            } else {
                shape.fill(.blue).opacity(1)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


#Preview {
    ContentView()
}
