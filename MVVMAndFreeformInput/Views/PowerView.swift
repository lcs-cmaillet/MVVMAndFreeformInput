//
//  ContentView.swift
//  MVVMAndFreeformInput
//
//  Created by Collin Maillet on 2025-03-31.
//

import SwiftUI

struct PowerView: View {
    
    //MARK: Stored Properties
    @State var viewModel = PowerViewModel()

    //MARK: Computed Properties
    var body: some View {
        VStack {
            // INPUT
            TextField("Please ender a base for the power", text: $viewModel.providedBase)
                .textFieldStyle(.roundedBorder)
            
            TextField("Please enter a exponet", text: $viewModel.providedExponent)
            .textFieldStyle(.roundedBorder)
            
            // OUTPUT
            Text("\(viewModel.power?.result)")
            Text("\(viewModel.recoverySuggestion)")
        }
        .padding()
    }
}

#Preview {
    PowerView()
}
