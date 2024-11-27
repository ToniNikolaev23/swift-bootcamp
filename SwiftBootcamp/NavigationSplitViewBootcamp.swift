//
//  NavigationSplitViewBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

struct NavigationSplitViewBootcamp: View {
    @State private var visibility: NavigationSplitViewVisibility = .automatic
    var body: some View {
        
        NavigationSplitView(columnVisibility: $visibility) {
            Color.red
        } content: {
            Color.blue
        } detail: {
            Color.green
        }
        .navigationSplitViewStyle(.balanced)

        
//        NavigationSplitView {
//            Color.red
//        } content: {
//            Color.blue
//        } detail: {
//            Color.green
//        }

//        
//        NavigationSplitView {
//            Color.red
//        } detail: {
//            Color.blue
//        }

    }
}

#Preview {
    NavigationSplitViewBootcamp()
}
