//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 3/10/25.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach", "mango", "pineapple", "grape", "strawberry", "blueberry"
    ]
    
    @State var vegies: [String] = [
        "Tomato", "Potato", "Carrot", "Beetroot"
    ]
    
    @State var isExpandedFruits: Bool  = true
    @State var isExpandedVeggies: Bool  = true
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    isExpanded: $isExpandedFruits,
                    content: {
                        ForEach(fruits, id: \.self){ fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.purple.opacity(0.4))
                    },
                    header: { Text("Fruits") }
                )
                
                Section(
                    isExpanded: $isExpandedVeggies,
                    content: {
                        ForEach(vegies, id: \.self) { vegie in
                            Text(vegie.capitalized)
                        }
                    },
                    header: {
                        Text("Veggies")
                    }
                )
    
            }
            
            .tint(.purple)
            .listStyle(SidebarListStyle())
            
            .navigationTitle("Grocery List")
            .toolbar{
                ToolbarItem(placement: .topBarLeading){ EditButton() }
                ToolbarItem(placement: .topBarTrailing){ addButton }
            }
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add"){
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add(){
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
