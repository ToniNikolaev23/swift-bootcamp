//
//  IconsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 13.11.24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFill()
//            .aspectRatio(contentMode: .fill)
//            .font(.system(size: 200))
            .foregroundColor(Color.red)
            .frame(width: 200, height: 200)
            .clipped()
            
    }
}

#Preview {
    IconsBootcamp()
}
