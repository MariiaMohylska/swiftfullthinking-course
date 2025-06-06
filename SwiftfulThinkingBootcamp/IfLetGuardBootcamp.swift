//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 6/6/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {

    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = "1234"
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID{
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "This is the new data! User ID: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Erro: ther is no user ID"
        }
        
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Erro: ther is no user ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "This is the new data! User ID: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
