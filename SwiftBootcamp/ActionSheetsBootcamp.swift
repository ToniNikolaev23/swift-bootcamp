//
//  ActionSheetsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct ActionSheetsBootcamp: View {
    @State var showSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    @State private var backgroundColor: Color = .white
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
               
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog(
            "Permanently erase the items in the Trash?",
            isPresented: $showSheet
        ) {
            Button("Red") { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Yellow") { backgroundColor = .yellow }
            Button("Remove color", role: .destructive) { backgroundColor = .clear }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("You cannot undo this action.")
        }
        
        
        
    }
    

}

#Preview {
    ActionSheetsBootcamp()
}
