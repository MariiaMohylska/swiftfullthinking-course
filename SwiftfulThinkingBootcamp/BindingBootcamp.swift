//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/3/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}


struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button(
            action: {
                backgroundColor = .orange
                buttonColor = .pink
                title = "We changed a title!"
            },
            label: {
                Text("Button")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(10)
            }
        )
    }
}

#Preview {
    BindingBootcamp()
}
