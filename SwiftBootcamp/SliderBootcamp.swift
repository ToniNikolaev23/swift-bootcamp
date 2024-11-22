//
//  SliderBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 22.11.24.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = Color.red
    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.2f", sliderValue)
//                "\(sliderValue)"
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(value: $sliderValue, in: 1...5, step: 1.0) {
                Text("Title")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                color = .green
            }

        }
    }
}

#Preview {
    SliderBootcamp()
}
