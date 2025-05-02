//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 5/1/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20) {
                    Text("This coloe is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    Text("This color is RED")
                        .foregroundStyle(.red)
                    Text("This color is Globaly Adaptive!")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This color is Locally Adaptive!")
                        .foregroundStyle(
                            colorScheme == .light ? .green : .yellow
                        )
                }
            }
            .navigationTitle("DarkMode Bootcamp")
        }
    }
}

#Preview {
//    Group{
//        DarkModeBootcamp()
//            .preferredColorScheme(.dark)
//        DarkModeBootcamp()
//            .preferredColorScheme(.light)
//    }
    DarkModeBootcamp()
}
