//
//  ContentUnavailableBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

struct ContentUnavailableBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            ContentUnavailableView("No Internet Connection", systemImage: "wifi.slash", description: Text("Please connect to the internet and try again"))
        } else {
            
        }
       
    }
}

#Preview {
    ContentUnavailableBootcamp()
}
