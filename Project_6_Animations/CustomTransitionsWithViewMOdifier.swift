//
//  CustomTransitionsWithViewMOdifier.swift
//  Project_6_Animations
//
//  Created by Joan May on 13/10/24.
//

import SwiftUI

struct cornerRotateModifier : ViewModifier {
    let amount : Double
    let anchor : UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot : AnyTransition {
        .modifier(
            active: cornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: cornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}
// DAY 33 BUILDING CUSTOM TRANSITIONS USING ViewModifier
struct CustomTransitionsWithViewMOdifier: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingRed.toggle()
            }
        }
    }
}

#Preview {
    CustomTransitionsWithViewMOdifier()
}
