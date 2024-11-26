//
//  AnimationUpdatedBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing:40) {
                Button(action: {
                    animate1.toggle()
                }, label: {
                    Text("Button 1")
                })
                
                Button(action: {
                    animate2.toggle()
                }, label: {
                    Text("Button 2")
                })
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
        }
        .animation(.spring(), value: animate1)
        .animation(.easeIn, value: animate2)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
