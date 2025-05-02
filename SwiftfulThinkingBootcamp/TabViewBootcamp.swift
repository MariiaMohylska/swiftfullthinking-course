//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 5/1/25.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        
        
        TabView(selection: $selectedTab) {
            Tab(value: 0){
                HomeView(selectedTab: $selectedTab)
            } label: {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            Tab(value: 1){
                Text("Browse")
            } label: {
                Image(systemName: "globe")
                Text("Browse")
            }
            
            Tab(value: 2){
                Text("Profile")
            }label: {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .tint(.black)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            VStack{
                Text("Home")
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }

        }
    }
}
