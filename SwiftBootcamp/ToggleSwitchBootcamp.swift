//
//  ToggleSwitchBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct ToggleSwitchBootcamp: View {
    @State var isToggle: Bool = false
    var body: some View {
        VStack {
            
            HStack {
                Text("Status")
                Text(isToggle ? "Online" : "Offline")
                    .foregroundColor(isToggle ? .green : .red)
                
            }
            .font(.title)
            
            Toggle(isOn: $isToggle, label: {
                Text("Test")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleSwitchBootcamp()
}
