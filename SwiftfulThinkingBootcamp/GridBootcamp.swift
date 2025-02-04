//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 1/29/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView{
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ){
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                ){
                    ForEach(0..<20){index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                
                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                ){
                    ForEach(0..<20){index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
                
            }
            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50){index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

#Preview {
    GridBootcamp()
}
