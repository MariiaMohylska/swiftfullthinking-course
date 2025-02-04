//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/18/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0.4768465757, green: 0.5047959685, blue: 1, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.4), radius: 10, x: 20, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}
