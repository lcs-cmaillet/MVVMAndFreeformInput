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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    PowerView()
}
