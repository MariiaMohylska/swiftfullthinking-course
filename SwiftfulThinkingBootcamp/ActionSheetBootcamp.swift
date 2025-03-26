//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 3/25/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions? = .isOtherPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(
                    action: {
                        actionSheetOption = .isMyPost
                        showActionSheet.toggle()
                    },
                    label: {
                        Image(systemName: "ellipsis")
                    })
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
//        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
        .confirmationDialog(
            Text("What would you like to do?"),
            isPresented: $showActionSheet){
//                Button(action: {}, label: {Text("Share")})
//                Button(role: .destructive, action: {}, label: {Text("Report")})
//                Button(role: .destructive, action: {}, label: {Text("Delete")})
//                Button(role: .cancel, action: {}, label: {})
                Button("Share"){}
                Button(role: .destructive, action: {}, label: {Text("Report")})
                Button(role: .destructive, action: {}, label: {Text("Delete")})
            }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton:ActionSheet.Button = .default(Text("Share")){
            //add code to share a post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            //add code to report this post
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            //add code to delete this post
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
            case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
            case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
            default:
            return ActionSheet(title: Text("ERROR"))
        }
        
        
//        return ActionSheet(title: Text("This is a title!"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is a title!"),
//            message: Text("This is a message."),
//            buttons: [button1, button2, button3]
//        )
    }
}

#Preview {
    ActionSheetBootcamp()
}
