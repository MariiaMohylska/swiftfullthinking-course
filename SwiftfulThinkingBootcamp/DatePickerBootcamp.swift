//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mariia Mohylska on 4/14/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2008)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormated: DateFormatter {
        let formater = DateFormatter()
        
        formater.dateStyle = .medium
        formater.timeStyle = .short
        
        return formater
    }
    
    var body: some View {
        
        VStack{
            
            Text("SELECTED DATE IS:")
            Text(dateFormated.string(from: selectedDate)).font(.title)
            
            
            //        DatePicker(
            //            "select a date",
            //            selection: $selectedDate
            //        )
                    
            //        DatePicker("Select date:", selection: $selectedDate, displayedComponents: [.hourAndMinute])
                    
                    DatePicker("Select date:", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                    .accentColor(.purple)
                    .datePickerStyle(.compact)

        }
    }
}

#Preview {
    DatePickerBootcamp()
}
