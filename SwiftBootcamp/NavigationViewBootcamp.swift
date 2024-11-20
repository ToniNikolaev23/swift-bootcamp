//
//  NavigationViewBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 20.11.24.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world") {
                    MyOtherScreen()
                }
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }

                }
                           
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Text("GEAR")
                    } label: {
                        Image(systemName: "gear")
                    }
                }
            }
            
        }
        
    }
}

struct MyOtherScreen: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green screen")
            
            VStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Back Button")
                })
                
                NavigationLink("Click here") {
                    Text("3rd screen")
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
