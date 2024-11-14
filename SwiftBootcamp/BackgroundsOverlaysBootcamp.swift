//
//  BackgroundsOverlaysBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 14.11.24.
//

import SwiftUI

struct BackgroundsOverlaysBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.purple, radius: 10, x:0.0, y:10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color.purple, radius: 10, x:5, y:5)
                        ,alignment: .bottomTrailing)
            )
//        Rectangle()
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50,height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150,height: 150)
//                , alignment: .bottomTrailing
//            )
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100,height: 100,alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 120, height: 120, alignment: .center)
//            )
//        Text()
//            .background(
////                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
//            )
//            
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120,height: 120, alignment: .center)
//            )
    }
}

#Preview {
    BackgroundsOverlaysBootcamp()
}
