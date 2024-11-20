//
//  TernaryBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                isStartingState.toggle()
            }, label: {
                Text("Button")
            })
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50, height: 100)
        }
    }
}

#Preview {
    TernaryBootcamp()
}
