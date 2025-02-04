//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/20/25.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text("Hello, World! ")
//            .background(Color.yellow)
////            .padding()
////            .padding(.all, 10)
////            .padding(.vertical, 10)
////            .padding(.horizontal, 10)
////            .padding(.top, 10)
////            .padding(.trailing, 10)
////            .padding(.bottom, 10)
////            .padding(.leading, 10)
//            .background(Color.blue)
        
//        Text("Hello, World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading, 20)
        
        VStack (alignment: .leading){
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is a description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 0.0,
                        y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
