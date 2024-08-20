//
//  ContentView.swift
//  DISwiftUI
//
//  Created by Никита Гуляев on 20.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentViewModel
    
    init(viewModel: ContentViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.data)
                .font(.headline)
            
            Text(viewModel.networkData)
                .font(.subheadline)
            
            Text(viewModel.databaseData)
                .font(.subheadline)
            
            Spacer()
        }
        .padding()
    }
}
