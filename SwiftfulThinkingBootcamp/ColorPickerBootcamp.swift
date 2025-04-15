//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 4/14/25.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(
                "Select a Color",
                selection: $backgroundColor,
                supportsOpacity: true
            )
            .padding()
            .background(.white)
            .cornerRadius(20)
            .padding(40)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
