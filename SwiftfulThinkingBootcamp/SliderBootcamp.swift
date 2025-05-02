//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 4/30/25.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        Text(
//            "\(sliderValue)"
            String(format: "%.0f", sliderValue)
        )
        .background(color)
//        Slider(value: $sliderValue)
//        Slider(value: $sliderValue, in: 1...5)
//        Slider(value: $sliderValue, in: 1...5, step: 1.0)
//            .tint(.purple)
        Slider(
            value: $sliderValue,
            in: 1...5,
            step: 1.0,
            onEditingChanged: {_ in
                color = .green
            },
            minimumValueLabel: Text("1"),
            maximumValueLabel: Text("5"),
            label: {
                Text("Title")
            }
        )
        
    }
}

#Preview {
    SliderBootcamp()
}
