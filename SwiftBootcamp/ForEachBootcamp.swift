//
//  ForEachBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 15.11.24.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Apple", "Orange"]
    var body: some View {
        VStack {
            ForEach(data.indices, id: \.self) { index in
                Text("\(index) \(data[index])")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
