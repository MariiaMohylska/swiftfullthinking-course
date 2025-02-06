//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/5/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRactengle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("is loading .... \(isLoading.description)"){
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } else {
                            Button("Circle Button: \(showCircle.description)") {
                                showCircle.toggle()
                            }
                
                            Button("Ractengle Button: \(showRactengle.description)"){
                                showRactengle.toggle()
                            }
                
                            if showCircle {
                                Circle()
                                    .frame(width: 100, height: 100)
                            }
                            if showRactengle {
                                Rectangle()
                                    .frame(width: 100, height: 100)
                            }
                
                            if showCircle || showRactengle{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 200, height: 100)
                
                            }
                            Spacer()
            }
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
