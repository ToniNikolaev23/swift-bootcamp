//
//  ControlGroupMenuBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup("One") {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("One")
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Two")
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Three")
                })
            }
         
            Button(action: {}, label: {
                Text("Two")
            })
            Menu("Three") {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Four")
                })
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
