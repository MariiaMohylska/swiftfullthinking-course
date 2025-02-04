//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/19/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "battery.100.bolt")
               .resizable()
                .symbolRenderingMode(.palette)
                .foregroundStyle(.yellow, .black, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.caption)
//            .font(.system(size: 200))
//            .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
