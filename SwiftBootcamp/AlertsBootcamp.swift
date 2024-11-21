//
//  AlertsBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 21.11.24.
//

import SwiftUI

struct AlertsBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Button(action: {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }, label: {
                    Text("BUTTON 1")
                })
                Button(action: {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 😎"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }, label: {
                    Text("BUTTON 2")
                })
                
            }
            .alert(isPresented: $showAlert, content: {
              getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
//        return  Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
        
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), dismissButton: .default(Text("OK")))
        default:
            return Alert(title: Text("ERROR"))
        }
        
    }
}

#Preview {
    AlertsBootcamp()
}
