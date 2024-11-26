//
//  ResizableSheetsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 26.11.24.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button(action: {
            showSheet.toggle()
        }, label: {
            Text("Click me")
        })
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detents: $detents)
//                .presentationDetents([.fraction(0.8)])
                .presentationDetents([.medium, .large], selection: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        })
    }
}

struct MyNextView: View {
    @Binding var detents: PresentationDetent
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            VStack(spacing: 20) {
                Button("Medium") {
                    detents = .medium
                }
            }
        }
    }
}

#Preview {
    ResizableSheetsBootcamp()
}
