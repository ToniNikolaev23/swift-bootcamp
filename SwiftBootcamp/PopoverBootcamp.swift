//
//  PopoverBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State private var showPopover: Bool = false
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button(action: {
                showPopover.toggle()
            }, label: {
                Text("CLICK ME")
            })
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topLeading)) {
                Text("Hello subs")
                    .presentationCompactAdaptation(.popover)
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
