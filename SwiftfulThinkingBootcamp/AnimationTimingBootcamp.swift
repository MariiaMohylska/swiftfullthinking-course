//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/14/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button"){
                isAnimated
                    .toggle()
            }
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 50 : 350, height: 100)
//                .animation(
//                    Animation.linear(duration: timing),
//                    value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 50 : 350, height: 100)
//                .animation(
//                    Animation.easeIn(duration: timing),
//                    value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 50 : 350, height: 100)
//                .animation(
//                    Animation.easeInOut(duration: timing),
//                    value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 50 : 350, height: 100)
//                .animation(
//                    Animation.easeOut(duration: timing),
//                    value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 50 : 350, height: 100)
                .animation(Animation.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 1.0
                ),
                           value: isAnimated)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
