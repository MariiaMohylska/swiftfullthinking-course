//
//  StepperBootcam.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 4/30/25.
//

import SwiftUI

struct StepperBootcam: View {
    
    @State var stepperValue: Int = 10
    @State var withIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + withIncrement, height: 100)
            Stepper("Stepper 2") {
                incrementWidth(amount: 100)
            } onDecrement: {
                decrementWidth(amount: 100)
            }

        }
    }
    
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            withIncrement += amount
        }
    }
    
    func decrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut){
            withIncrement -= amount
        }
    }
}

#Preview {
    StepperBootcam()
}
