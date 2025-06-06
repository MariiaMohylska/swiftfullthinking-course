//
//  onAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 6/6/25.
//

import SwiftUI

struct onAppearBootcamp: View {
    
    @State var myText: String = "Starting Text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                            .onDisappear{
                                count -= 1
                            }
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is a new text!"
                }
            }
            .onDisappear{
                
            }
            .navigationTitle("OnAppear: \(count)")
        }
    }
}

#Preview {
    onAppearBootcamp()
}
