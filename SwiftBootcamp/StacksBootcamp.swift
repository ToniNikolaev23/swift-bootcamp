//
//  StacksBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 14.11.24.
//

import SwiftUI

struct StacksBootcamp: View {
    //VStacks - Vertical
    //HStacks - Horizontal
    //Zstacks - zIndex (back to front)
    var body: some View {
        VStack( spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
//        HStack(alignment: .bottom, spacing: 0, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        })
      
    }
}

#Preview {
    StacksBootcamp()
}
