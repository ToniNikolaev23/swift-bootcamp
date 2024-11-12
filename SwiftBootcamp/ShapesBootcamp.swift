//
//  ShapesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 12.11.24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.blue)
//            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/,lineWidth: 30)
//            .stroke(Color.red,style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            .trim(from: 0.4, to: 1.0)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
