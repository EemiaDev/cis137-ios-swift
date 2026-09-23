//
//  Lab1
//  Group Unknown
//  Aimee Jin
//  9/22/26
//

import SwiftUI

struct ContentView: View {
    // arrays, dictionary, and @State
    
    let dogNames: [String] = [
        "Airedale Terrier",
        "American Foxhound",
        "Dutch Shepherd",
        "Havanese",
        "Leonberger",
        "Mudi",
        "Norwegian Lundehund",
        "Pharaoh Hound",
        "Scottish Terrier",
        "Tosa"
    ]
    
    let dogDescriptions: [String] = [
        "The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
        "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",
        "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",
        "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",
        "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",
        "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",
        "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.",
        "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.",
        "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.",
        "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."
    ]
    
    var dogDictionary: [String: String] {
        Dictionary(uniqueKeysWithValues: zip(dogNames, dogDescriptions))
    }
    
    @State private var tapDog: String?
    
    var body: some View {
        VStack {
            // title, dog images, and description
            
            Text("Tap the dog to learn more")
                .bold()
            
            HStack {
                Image("Airedale Terrier")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Airedale Terrier"
                    }

                Image("American Foxhound")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "American Foxhound"
                    }
            }
            
            HStack {
                Image("Dutch Shepherd")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Dutch Shepherd"
                    }

                Image("Havanese")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Havanese"
                    }
            }
            
            HStack {
                Image("Leonberger")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Leonberger"
                    }

                Image("Mudi")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Mudi"
                    }
            }
            
            HStack {
                Image("Norwegian Lundehund")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Norwegian Lundehund"
                    }

                Image("Pharaoh Hound")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Pharaoh Hound"
                    }
            }
            
            HStack {
                Image("Scottish Terrier")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Scottish Terrier"
                    }

                Image("Tosa")
                    .resizable()
                    .scaledToFit()
                    .border(Color.gray.opacity(0.5), width: 1)
                    .frame(height: 120)
                    .onTapGesture {
                        tapDog = "Tosa"
                    }
                    
            }
            
            if let tapDog {
                Text(dogDictionary[tapDog] ?? "")
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
