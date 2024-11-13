//
//  FramesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 13.11.24.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
//            .frame(width: 300, height: 300, alignment: .center)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150, alignment: .leading)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

#Preview {
    FramesBootcamp()
}
