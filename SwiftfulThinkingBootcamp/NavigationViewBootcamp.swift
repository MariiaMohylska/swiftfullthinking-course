//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 2/16/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, World!", destination: MyOtherScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
//            .toolbar(Visibility.hidden)
            
            
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        }
                    )
                    .tint(Color.red)
                }
                }
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
                .toolbar(Visibility.hidden)
            
            VStack {
                Button("Back button"){
                    dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd screen"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
