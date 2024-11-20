//
//  ExtractedFunctionsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 19.11.24.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor: Color = Color.pink
    @State var myTitle: String = "My title"
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text(myTitle)
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
        myTitle = "New title"
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
