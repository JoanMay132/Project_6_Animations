//
//  Day32_ExplicitAnimations.swift
//  Project_6_Animations
//
//  Created by Joan May on 12/10/24.
//

import SwiftUI
// Day 32 - Creating Explicit Animations
struct Day32_ExplicitAnimations: View {
    @State private var animationAmount : Double = 0.0
    var body: some View {
        Button("Tap Me"){
            withAnimation(.spring(duration: 1,bounce: 0.5)) {
                animationAmount += 360
                
            }
        }
        .padding(50)
        .foregroundStyle(.white)
        .background(Color.red)
        .clipShape(.circle)
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    Day32_ExplicitAnimations()
}
