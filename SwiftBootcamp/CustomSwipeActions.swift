//
//  CustomSwipeActions.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct CustomSwipeActions: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true, content: {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Archive")
                        })
                        .tint(.orange)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Save")
                        })
                        .tint(.green)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Delete")
                        })
                        .tint(.red)
                    })
                    .swipeActions(edge: .leading, allowsFullSwipe: true, content: {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Share")
                        })
                        .tint(.blue)
                    })
            }
//            .onDelete(perform: delete)
        }
    }
    
//    func delete(indexSet: IndexSet) {
//        
//    }
}

#Preview {
    CustomSwipeActions()
}
