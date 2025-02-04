//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/1/25.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    @State var count: Int = 0
    @State var count2: Int = 0
    
    var body: some View {
        VStack (spacing: 20){
            Text(title)
            Button("Press me") {
                self.title = "Button was pressed: \(count)"
                count += 1
            }
            .tint(.red)
            
            Button(
                action: {
                    self.title = "Button #2 was pressed: \(count2)"
                    count2 += 1
                },
                label: {
                    Text("Saved".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        )
                }
            )
            
            Button(
                action: {
                    self.title = "Button #3";
                },
                label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.red)
                        )

                }
            )
            
            Button(
                action: {
                    self.title = "Button #4";
                },
                label: {
                    Text("Finish".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundStyle(Color.gray)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 2.0)
                        )
                }
            )
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
