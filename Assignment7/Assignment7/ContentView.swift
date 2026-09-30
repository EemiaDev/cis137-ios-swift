//
//  ContentView.swift
//  Assignment7
//
//  Assignment# 7
//  Aimee Jin
//  9/29/2026
//

import SwiftUI

extension VerticalAlignment {
    struct TopAlign: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }

    static let topAlign = VerticalAlignment(TopAlign.self)
}

struct ContentView: View {
    var body: some View {
        
        HStack(alignment: .topAlign, spacing: 20) {
            VStack {
                Image("Profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .alignmentGuide(.topAlign) { d in d[.top] - 4 }
                        
                Text("Aimee Jin")
                    .font(.title2)
                    
            }
                     
            VStack(alignment: .leading, spacing: 8) {
                Text("Aimee is a part time student at the College of San Mateo majoring in Web/Mobile App Development. Swift is her favorite programming language.")
                    .alignmentGuide(.topAlign) { d in d[.top] }
         
                Text("In her free time, she enjoys reading and drawing. She also loves playing tennis and is a member of the San Mateo Tennis Club.")
                          
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
