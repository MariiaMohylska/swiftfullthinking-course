//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/16/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                    
                    NavigationLink("Hello, WORLD!",
                                   destination: OneNewScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: OneNewScreen(),
                                   label:{
                        Image(systemName: "gear")
                    }).tint(Color.green)
                }
            }
        }
    }
}

struct OneNewScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .toolbar(.hidden)
            
            VStack {
                Button("Back Button"){
                    dismiss()
                }
                NavigationLink("Click here",
                               destination: Text("3rd screen!!!"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
