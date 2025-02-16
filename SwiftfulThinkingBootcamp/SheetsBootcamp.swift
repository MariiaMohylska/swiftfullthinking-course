//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/16/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            
            Button(
                action: {
                    showSheet.toggle()
                },
                label: {
                    Text("Button")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                }
            )
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
            
            
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            
            Button(
                action: {
                    dismiss()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            )
            
            
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
