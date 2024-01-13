//
//  ContentView.swift
//  SimpleTrafficLight
//
//  Created by Vasya Smetankin on 13.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var counter = 0
    
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Circle()
                    .foregroundColor(.red)
                    .overlay(Circle().stroke(Color.white, style: StrokeStyle(lineWidth: 2)))
                    .opacity(counter == 1 ? 2 : 0.5)
                Circle()
                    .foregroundColor(.yellow)
                    .overlay(Circle().stroke(Color.white, style: StrokeStyle(lineWidth: 2)))
                    .opacity(counter == 2 ? 2 : 0.5)
                Circle()
                    .foregroundColor(.green)
                    .overlay(Circle().stroke(Color.white, style: StrokeStyle(lineWidth: 2)))
                    .opacity(counter == 3 ? 2 : 0.5)
                
                Button(counter == 0 ? "Start" : "Next") {
                    counter += 1
                    if counter > 3 {
                        counter = 1
                    }
                }
                .padding(.top)
            }
            .frame(width: 100)

        }
    }
}



#Preview {
    ContentView()
}
