//
//  AppStorageBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 24.11.24.
//

import SwiftUI

struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button(action: {
                let name: String = "Test"
                currentUserName = name
            }, label: {
                Text("Save")
            })
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
