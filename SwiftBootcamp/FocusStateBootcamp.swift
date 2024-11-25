//
//  FocusStateBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 25.11.24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case username
        case password
    }
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingFields?
    
    
    var body: some View {
        
     
        VStack {
            TextField("Add your name here", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
//            Button(action: {
//                usernameInFocus.toggle()
//            }, label: {
//                Text("TOGGLE")
//            })
            
            Button(action: {
                let usernameisValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if(usernameisValid && passwordIsValid) {
                    print("SIGN UP")
                } else if usernameisValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
            }, label: {
                Text("SIGN UP")
            })
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
