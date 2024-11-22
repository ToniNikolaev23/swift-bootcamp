//
//  TextEditorBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.white)
                    .colorMultiply(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
