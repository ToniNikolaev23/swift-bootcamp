//
//  SafeAreaBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 16.11.24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                }
            }
        }
        .background(Color.red)
        
        
        
        
        
//        ZStack {
//            
//            Color.blue
//                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//            
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    .foregroundColor(.white)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(Color.red)
//        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
