//
//  GroupBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello world")
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .foregroundColor(.red)
            .font(.headline)
        }
       
    }
}

#Preview {
    GroupBootcamp()
}
