//
//  AnimationBindings.swift
//  Project_6_Animations
//
//  Created by Joan May on 12/10/24.
//

import SwiftUI
// Day 32 - Animating bindings
struct AnimationBindings: View {
    @State private var animationAmount : Double = 1.0
    var body: some View {
        
        print(animationAmount)
        
        return VStack {
            Stepper("Animation Amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            Spacer()
            Button("Tap Me"){
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
    }
}

#Preview {
    AnimationBindings()
}
