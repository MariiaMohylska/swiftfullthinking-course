//
//  ExtractSubViewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/3/25.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    var body: some View {
        ZStack {
            //background
            Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)).ignoresSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyItem(title: "Apples", count: 10, color: .red)
            MyItem(title: "Oranges", count: 5, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
