//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 3/27/25.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is a starting text"
    @State var savedText:String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .padding()
//                    .foregroundStyle(.blue) do not work with color multiply
//                    .colorMultiply(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .scrollContentBackground(.hidden)
                    .foregroundStyle(.gray)
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Button(
                    action:{
                        savedText = textEditorText
                    },
                    label: {
                        Text("Save".uppercased())
                            .font(.headline)
                            .foregroundStyle(Color.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                )
                Text(savedText)
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
