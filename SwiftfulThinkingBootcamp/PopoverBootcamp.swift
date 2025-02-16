//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/16/25.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Button") {
//                    for method 2 and 3
                    withAnimation(.spring()){
                        showNewScreen.toggle()
                    }
                    
//                    method 1
//                    showNewScreen.toggle()
                }.font(.largeTitle)
                
                Spacer()
            }
            //Method 1 - sheet
//            .sheet(isPresented: $showNewScreen, content:{
//                NewScreen()
//            })
            
            // Method 2 - transition
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                }
//            }.zIndex(2.0)
            
//            Method 3 - animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0.0 : UIScreen.main.bounds.height)
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.purple.ignoresSafeArea()
            
            Button(
                action: {
//                    for method 1 -sheet
//                    dismiss()
                    
                    showNewScreen.toggle()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.white)
                        .font(.largeTitle)
                        .padding(20)
                }
            )
        }
    }
}

#Preview {
    PopoverBootcamp()
}
