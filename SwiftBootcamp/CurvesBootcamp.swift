//
//  CurvesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct CurvesBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button(action: {
                isAnimating.toggle()
            }, label: {
                Text("Button")
            })
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 1.0), value: isAnimating)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    CurvesBootcamp()
}
