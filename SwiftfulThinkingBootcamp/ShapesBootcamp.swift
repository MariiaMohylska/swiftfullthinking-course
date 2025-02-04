//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/18/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(.red)
//            .stroke(Color.purple, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(
//                lineWidth: 10,
//                lineCap: .round,
//                dash: [50]
//            ))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 250, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
