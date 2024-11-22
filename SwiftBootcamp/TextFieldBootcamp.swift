//
//  TextFieldBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("Type something here", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField bootcamp")
        }
        
        
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
