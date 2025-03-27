//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 3/26/25.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    var body: some View {
        NavigationView{
            VStack {
                TextField("Type something here ...", text: $textFieldText )
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(Color.red)
                    .font(.headline)
                
                Button(
                    action: {
                        if textIsOk(){
                            save()
                        }
                    },
                    label: {
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(textIsOk() ? Color.blue.opacity(0.7) : Color.gray.opacity(0.7))
                            .cornerRadius(10)
                            .foregroundStyle(Color.white)
                            .font(.headline)
                    }).disabled(!textIsOk())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }.padding(.horizontal)
            
            .navigationTitle("Text Field Bootcamp")
        }
        
    }
    
    func textIsOk() -> Bool {
        // check text
        if textFieldText.count >= 3{
            return true
        } else {
            return false
        }
    }
    
    func save() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
