//
//  Day33_showing&HidingViewsWithTransitions.swift
//  Project_6_Animations
//
//  Created by Joan May on 13/10/24.
//

import SwiftUI

// DAY 33 SHOWING AND HIDING VIEWS WITH TRANSITIONS
struct Day33_showing_HidingViewsWithTransitions: View {
    
    @State private var isShowingReD = false
    
    var body: some View {
        VStack {
            Button ("Tap Me") {
                withAnimation {
                    isShowingReD.toggle()
                }
                
            }
            if isShowingReD {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    Day33_showing_HidingViewsWithTransitions()
}
