//
//  ExtractSubviewBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Oranges", count: 10, color: Color.blue)
            MyItem(title: "Bananas", count: 20, color: Color.yellow)
        }
    }
}

#Preview {
    ExtractSubviewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
            
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
