//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 4/14/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    let filterOptions: [String] = ["Most Popular", "Most Recent", "Highest Rated"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.blue
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Age: ")
                Text(selection)
            }
            
            Picker(
                selection: $selection,
                content: {
                    ForEach(filterOptions, id:\.self) { option in
                        Text(option).font(.title).foregroundStyle(.blue).tag(option)
                    }
                },
                label: {
                    Text("Picker")
                }
            ).pickerStyle(.segmented)
        }

    }
}

#Preview {
    PickerBootcamp()
}
