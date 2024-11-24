//
//  DataModelsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 24.11.24.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct DataModelsBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick", followerCount: 1000, isVerified: false),
        UserModel(displayName: "Toni", userName: "toni23", followerCount: 5000, isVerified: true),
        UserModel(displayName: "Gosho", userName: "ggosho", followerCount: 500, isVerified: false),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35,height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                   
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
//                ForEach(users, id: \.self) { user in
//                    HStack(spacing: 15.0) {
//                        Circle()
//                            .frame(width: 35,height: 35)
//                        Text(user.displayName)
//                    }
//                    .padding(.vertical, 10)
//                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    DataModelsBootcamp()
}
