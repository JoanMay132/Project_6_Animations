//
//  Day_33_Animating_Gestures.swift
//  Project_6_Animations
//
//  Created by Joan May on 13/10/24.
//

import SwiftUI
// DAY 33 - ANIMATING GESTURES
struct Day_33_Animating_Gestures: View {
    
    let letters = Array("Hello swiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {

        HStack(spacing: 0){
            ForEach(0 ..< letters.count, id: \.self ) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? . blue : .green)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20), value: dragAmount)
                
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle() }
        )
                     
        
    }
    
}

#Preview {
    Day_33_Animating_Gestures()
}
