//
//  BackgroundMaterialsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
        .background(
            Image("Swift")
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
