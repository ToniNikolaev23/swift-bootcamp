//
//  PickerBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        Picker(selection: $selection) {
            ForEach(filterOptions.indices, id: \.self) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.red)

//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag("\(number)")
//                        .foregroundColor(.red)
//                }
//                
//             
//            } label: {
//                Text("Picker")
//            }
//        }

    }
}

#Preview {
    PickerBootcamp()
}
