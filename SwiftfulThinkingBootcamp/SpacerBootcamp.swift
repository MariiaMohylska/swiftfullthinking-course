//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/22/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack (spacing: 0){
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.orange)
//        }
//        .background(Color.yellow)
//        .padding(.horizontal, 200)
//        .background(Color.blue)
        
        VStack {
            HStack (spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
        }
        .background(Color.pink)
        
    }
}

#Preview {
    SpacerBootcamp()
}
