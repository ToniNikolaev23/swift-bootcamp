//
//  DatePickerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        DatePicker("Select a Date", selection: $selectedDate)
            .accentColor(.red)
            .datePickerStyle(GraphicalDatePickerStyle())
    }
}

#Preview {
    DatePickerBootcamp()
}
