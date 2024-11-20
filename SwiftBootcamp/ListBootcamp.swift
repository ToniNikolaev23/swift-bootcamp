//
//  ListBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
    "Apple", "Orange", "Banana", "Peach"
    ]
    @State var veggies: [String] = [
    "Tomato", "Potato", "Carrot"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                       
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie)
                    }
                }
               
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
       
    }
    
    var addButton: some View {
        Button(action: {
            add()
        }, label: {
            Text("Add")
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
