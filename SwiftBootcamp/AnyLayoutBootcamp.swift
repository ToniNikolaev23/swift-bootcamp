//
//  AnyLayoutBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    var body: some View {
        Text("Hello, World!")
        
        let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) :  AnyLayout(HStackLayout())
        
        layout {
            Text("Alpha!")
            Text("Beta!")
            Text("Gama!")
        }
        Spacer()
        if horizontalSizeClass == .compact {
            VStack {
                Text("Alpha!")
                Text("Beta!")
                Text("Gama!")
            }
        } else {
            HStack {
                Text("Alpha!")
                Text("Beta!")
                Text("Gama!")
            }
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
