//
//  ExtractedFubctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/3/25.
//

import SwiftUI

struct ExtractedFubctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .ignoresSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(
                action: buttonPressed,
                label: {
                    Text("Press Me")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
            )
        }
    }
        
}

#Preview {
    ExtractedFubctionsBootcamp()
}
