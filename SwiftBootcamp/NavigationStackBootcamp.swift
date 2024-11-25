//
//  NavigationStackBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        
        
        
        NavigationStack(path: $stackPath ) {
            
            VStack {
                
                Button("Super segue") {
                    stackPath.append(contentsOf: [
                        "Coconut", "Watermelon", "Mango"
                    ])
                }
                
                ForEach(fruits, id: \.self) { fruit in
                    NavigationLink(value: fruit) {
                        Text(fruit)
                    }
                }
                
                ForEach(0..<10) { x in
                    NavigationLink(value: x) {
                        Text("Click me \(x)")
                    }
                }
            }
            .navigationTitle("Nav bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN \(value)")
            }
        }
       
    }
    
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init screen \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
