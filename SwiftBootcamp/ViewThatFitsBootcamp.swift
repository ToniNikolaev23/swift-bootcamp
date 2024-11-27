//
//  ViewThatFitsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that i would like to display to the user!")
                Text("This is some text that i would")
                Text("This is some text")
            }
            
            
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
