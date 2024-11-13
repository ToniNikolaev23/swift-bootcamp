//
//  ImagesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 13.11.24.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("Swift")
//            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200)
//            .foregroundColor(.red)
//            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ImagesBootcamp()
}
