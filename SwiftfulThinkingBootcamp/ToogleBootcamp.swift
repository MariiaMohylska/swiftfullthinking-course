//
//  ToogleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 3/27/25.
//

import SwiftUI

struct ToogleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                }
            )
            .toggleStyle(
                SwitchToggleStyle(
                    tint: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
                )
            )
            .padding(.horizontal, 100)
            Spacer()
        }
    }
}

#Preview {
    ToogleBootcamp()
}
