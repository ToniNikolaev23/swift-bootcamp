//
//  TransitionsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct TransitionsBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button(action: {
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                   
                }, label: {
                    Text("Button")
                })
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge:.leading), removal: .move(edge: .bottom)))
            }
           
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionsBootcamp()
}
