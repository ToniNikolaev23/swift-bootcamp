//
//  ScrollViewBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 16.11.24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                           
                        }
                    }
                  
                }
            }
        }
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300,height: 300)
//                }
//                
//            }
//        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
