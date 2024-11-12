//
//  TextBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 12.11.24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello world!")
//            .font(.body)
//            .fontWeight(.medium)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.leading)
//            .baselineOffset(-20.0)
//            .kerning(5.0)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            
    }
}

#Preview {
    TextBootcamp()
}
