//
//  ConditionalBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("Button")
            })
            
            if isLoading {
                ProgressView()
            }
            
//            Button(action: {
//                showCircle.toggle()
//            }, label: {
//                Text("Button: \(showCircle.description)")
//            })
//            
//            Button(action: {
//                showRectangle.toggle()
//            }, label: {
//                Text("Rectangle: \(showRectangle.description)")
//            })
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            } 
//            
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
//            
//            Spacer()
            
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
