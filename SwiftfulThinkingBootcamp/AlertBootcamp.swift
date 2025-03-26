//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 3/25/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
//            VStack {
//                Button("Button 1") {
////                    alertTitle = "ERROR UPLOADING VIDEO"
////                    alertMessage = "The video can not be uploaded"
//                    alertType = .error
//                    showAlert.toggle()
//                }
//                Button("Button 2") {
////                    alertTitle = "SUCCESSFULLY UPLOADED VIDEO 🥳"
////                    alertMessage = "Your video is now public"
//                    alertType = .success
//                    showAlert.toggle()
//                }
//            }
//            .alert(isPresented: $showAlert,) {
//            getAlert()
//            }
            Button("Some Button"){
                showAlert.toggle()
            }
            .alert(
                Text("Hi there!"),
                isPresented: $showAlert,
                actions: {
                                    Button(role: .cancel, action: {}, label: {Text("Cancel")})
                                    Button(role: .destructive, action: {}, label: {Text("Destructive")})
                                    Button(action: {}, label: {Text("Some")})
                                    
                                    },
                message: {
                    Text("Okay this is a message")
                })
                
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(
                title: Text("There was a success!"),
                message: nil,
                dismissButton: .default(Text("OK")){
                    backgroundColor = .green.opacity(0.5)
                }
            )
        default:
            return Alert(title: Text("ERROR"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        return Alert(
//            title: Text("This is a title"),
//            message: Text("Here we will describe an error"),
//            primaryButton:
//                    .destructive(Text("DELETE")){
//                        backgroundColor = .pink.opacity(0.5)
//                    },
//            secondaryButton: .cancel()
//        )
    }
}

#Preview {
    AlertBootcamp()
}
