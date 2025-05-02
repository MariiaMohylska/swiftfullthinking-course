//
//  CaruselTabViewBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 5/1/25.
//

import SwiftUI

struct CaruselTabViewBootCamp: View {
        @State var selectedTab: Int = 0
    
    let icons: [String] = [
            "heart.fill", "globe", "house.fill", "person.fill"
    ]
        
        var body: some View {
            TabView{
                ForEach(icons, id: \.self){ icon in
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
            }
            .background(
                RadialGradient(gradient: Gradient(colors: [.purple, .blue]), center: .center, startRadius: 15, endRadius: 300)
            )
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
        }
}

#Preview {
    CaruselTabViewBootCamp()
}
