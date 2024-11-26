//
//  SafeAreaInsetsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("HI")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
//                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                    .padding()
            }
//            .overlay(
//                Text("HI")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//
//                ,alignment: .bottom
//            )
            .navigationTitle("Safe Area Insets")
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
