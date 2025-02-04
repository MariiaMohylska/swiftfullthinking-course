//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/19/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
//            )
    }
}

#Preview {
    ImageBootcamp()
}
