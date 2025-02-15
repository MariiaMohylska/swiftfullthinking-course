//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/14/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            VStack{
                Button("Button") {
                    withAnimation(Animation.easeInOut){
                        showView.toggle()
                    }
                }
                
                Spacer()
            }
            
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .leading),
                            removal: .opacity
                        ))
//                    .animation(.easeInOut, value: showView)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
