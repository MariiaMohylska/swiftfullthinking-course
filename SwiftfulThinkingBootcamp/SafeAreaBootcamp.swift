//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/1/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
            .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    SafeAreaBootcamp()
}
