//
//  ColorsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 13.11.24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1))
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color.red.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -30.0, y: 30.0)
    }
}

#Preview {
    ColorsBootcamp()
}
