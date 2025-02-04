//
//  InitBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/27/25.
//

import SwiftUI

struct InitBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch(fruit){
        case .apple:
            self.backgroundColor = .red
            self.title = "Apples"
        case .banana:
            self.backgroundColor = .yellow
            self.title = "Bananas"
        case .orange:
            self.backgroundColor = .orange
            self.title = "Oranges"
//        default:
//            self.backgroundColor = .blue
//            self.title = "Unknown"
        }
        
    }
    
    enum Fruit {
        case apple
        case banana
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}
 
#Preview {
    VStack {
        InitBootcamp(count: 120, fruit: .apple)
        InitBootcamp(count: 100, fruit: .orange)
        InitBootcamp(count: 47, fruit: .banana)
    }
}
