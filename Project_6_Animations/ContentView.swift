//
//  ContentView.swift
//  Project_6_Animations
//
//  Created by Joan May on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        
        
        Button("Tap Me") {
            //  do anything
//            animationAmount += 1
        }
        
        .padding(20)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount-1) * 3)
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeIn(duration: 1)
                    .repeatForever(),
                    value: animationAmount)
        )
        .onAppear()
        {
            animationAmount = 2
        }
        // Day 32 - Customizing animations in SwiftUI

//        .animation(.default, value: animationAmount)
//        .animation(.linear, value: animationAmount)
//        .animation(.spring(duration: 1,bounce: 0.9), value: animationAmount)
//        .animation(.easeInOut(duration: 2).delay(1), value: animationAmount)

    }
}

#Preview {
    ContentView()
}
