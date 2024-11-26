//
//  ToolbarBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                Text("Hey")
                    .foregroundColor(.white)
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(leading: Image(systemName: "heart.fill"))
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .principal) {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
