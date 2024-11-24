//
//  DocumentationBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 22.11.24.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    //MARK: BODY
    
    // Working copy - things to do: 1) Fix title
    /*
     
     
     
     
     
     
     */
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello")
                ForEach(data, id: \.self) { fruit in
                    Text(fruit)
                        .font(.headline)
                }
            }
          
        }
    }
    
    //MARK: FUNCTIONS
    /// Test function
    ///
    /// This function is just to test documentations
    ///
    /// ```
    /// getTest(text: "Test") -> Text("Test")
    /// ```
    /// - Warning: This is warning!
    /// - Parameter text: test text
    /// - Returns: return text
    func testFunction(text: String) -> String {
        return text
    }
}

//MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
