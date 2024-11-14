//
//  PaddingSpacerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 14.11.24.
//

import SwiftUI

struct PaddingSpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
              
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
                
            }
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            
            Spacer()
        }
//        VStack(alignment: .leading) {
//            Text("Hello, World!")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//                .padding(.bottom, 20)
//            
//            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//                
//        }
////        .background(Color.blue)
//        .padding()
//        .padding(.vertical, 0)
//        .background(
//            Color.white
//                .cornerRadius(10)
//                .shadow(color: Color.black.opacity(0.3), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
//        )
//        .padding(.horizontal, 10)
////            .frame(maxWidth: .infinity, alignment: .leading)
//////            .background(Color.red)
////            .padding(.leading, 20)
    }
}

#Preview {
    PaddingSpacerBootcamp()
}
