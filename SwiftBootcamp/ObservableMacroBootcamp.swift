//
//  ObservableMacroBootcamp.swift
//  SwiftBootcamp
//
//  Created by Toni Stoyanov on 27.11.24.
//

import SwiftUI

@Observable class ObservableViewModel {
   var title: String = "Some title"
}

struct ObservableMacroBootcamp: View {
    @State private var viewModel = ObservableViewModel()
    var body: some View {
        VStack(spacing: 40) {
            Button(action: {
                viewModel.title = "New title"
            }, label: {
                Text(viewModel.title)
            })
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
            
        }
        .environment(viewModel)
    }
}


struct SomeChildView: View {
    @Bindable var viewModel: ObservableViewModel
    var body: some View {
        Button(action: {
            viewModel.title = "dasddasdad"
        }, label: {
            Text(viewModel.title)
        })
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(action: {
            viewModel.title = "third viewwww"
        }, label: {
            Text(viewModel.title)
        })
    }
}

#Preview {
    ObservableMacroBootcamp()
}
