//
//  IFLetGuardBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 24.11.24.
//

import SwiftUI

struct IFLetGuardBootcamp: View {
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
//                Text(displayText!)
//                    .font(.title)
                
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userId = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error! There is no USER ID"
        }
        
        
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error! There is no USER ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IFLetGuardBootcamp()
}
