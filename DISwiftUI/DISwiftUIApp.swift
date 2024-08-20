//
//  DISwiftUIApp.swift
//  DISwiftUI
//
//  Created by Никита Гуляев on 20.08.2024.
//

import SwiftUI

@main
struct DISwiftUIApp: App {
    let viewModel = DependencyProvider.shared.container.resolve(ContentViewModel.self)
    
    var body: some Scene {
        WindowGroup {
            if let viewModel = viewModel {
                ContentView(viewModel: viewModel)
            }
        }
    }
}
