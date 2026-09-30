//
//  ContentView.swift
//  Assignment6
//
//  Assignment# 6
//  Aimee Jin
//  9/29/2026
//  

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFit()
            
            VStack {
                
                Text("Dessert Gallery")
                    .font(.title)
                    .bold()
                    .padding(24)
                
                HStack {
                    Image("rahmad-kurniawan-z26o672orto-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                    
                    Image("rahmad-kurniawan-WkwYY6Xk5Do-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                                    
                    Image("rahmad-kurniawan-qJGAEtA2r1M-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                }
                
                HStack {
                    Image("rahmad-kurniawan-hj2W1RG7yQQ-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                                       
                    Image("rahmad-kurniawan-Q3RR4CkI3ak-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                                    
                    Image("rahmad-kurniawan-KFkjq1B9h70-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                }
                
                HStack {
                    Image("rahmad-kurniawan-4mDHJKeTBm0-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                    
                    Image("rahmad-kurniawan-qDV3AGOxrSA-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                                
                    Image("rahmad-kurniawan-fcPkCl4FBE8-unsplash")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
