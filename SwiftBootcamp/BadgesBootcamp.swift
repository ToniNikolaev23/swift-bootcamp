//
//  BadgesBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.red.tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge(5)
            
            Color.red.tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            
            Color.red.tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
