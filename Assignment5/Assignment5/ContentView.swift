//
//  Assignment5
//  Aimee Jin
//  9/22/26
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, I'm Aimee!")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .padding()
            Image("Profile").resizable()
                .scaledToFit()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
