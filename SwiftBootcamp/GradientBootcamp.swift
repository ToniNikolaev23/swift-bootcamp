//
//  GradientBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 13.11.24.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400
//                )
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
