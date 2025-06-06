//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 6/6/25.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: PROPERTIES
    @State var data: [String] = [
        "Apples", "Orange", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: BODY
    
    // Working copy - things to do:
    /*
    1) Fix title
    2) Fix alert
    */
    
    var body: some View {
        NavigationView{ // START: NAV
            ZStack {
                // background
                Color.gray.edgesIgnoringSafeArea(.all)
                
                //foreground
                foregroundLayer
                
                .navigationTitle("Documentation")
                .toolbar{
                    ToolbarItem{
                        Button("Alert", action: {
                            showAlert.toggle()
                        })
                        .alert(isPresented: $showAlert, content: {
                            getAlert(text: "This is the alert!")
                        })
                    }
                }
            }
            
        } // END: NAV
    }
    
    /// This is a foreground layer that hold a scrollview
    private var foregroundLayer: some View {
        ScrollView{ // START: SCROLL V
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLL V
    }
    
    //MARK: FUNCTIONS
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert immediatly. The alert will have a title
    /// based on the text parameter but it will NOT have a message.
    ///
    ///  ```
    ///  getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///  ```
    ///
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: this is a title for the alert
    /// - Returns: returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
