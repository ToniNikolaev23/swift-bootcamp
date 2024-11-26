//
//  MenuBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Button")
            })
            Button(action: {}, label: {
                Text("Button 2")
            })
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Button 3")
            })
        } label: {
            Text("Click me")
        }
    }
}

#Preview {
    MenuBootcamp()
}
