//
//  StepperBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 22.11.24.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var value: Int = 0
    var body: some View {
        Stepper {
            Text("Stepper \(value)")
        } onIncrement: {
            incrementStep()
        } onDecrement: {
            decrementStep()
        }

    }
    
    func incrementStep() {
            value += 1
        }
    
    func decrementStep() {
            value -= 1
        }
}

#Preview {
    StepperBootcamp()
}
