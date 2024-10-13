//
//  Day33_Project6_Part_ll.swift
//  Project_6_Animations
//
//  Created by Joan May on 13/10/24.
//

import SwiftUI
// Day 33 - CONTROLLING THE ANIMATION STACK (Position matters)
struct Day33_Project6_Part_ll: View {
    
    @State private var enabled : Bool = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .red : .blue)
        .foregroundStyle(.white)
        .font(.title)
        .animation(.default, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.9),value: enabled)
        
    }
}

#Preview {
    Day33_Project6_Part_ll()
}
