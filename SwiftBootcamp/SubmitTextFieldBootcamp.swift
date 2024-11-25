//
//  SubmitTextFieldBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.join)
            .onSubmit {
                print("Something to the console")
            }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
