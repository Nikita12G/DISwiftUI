//
//  DependencyProvider.swift
//  DISwiftUI
//
//  Created by Никита Гуляев on 20.08.2024.
//

import Swinject

class DependencyProvider {
    static let shared = DependencyProvider()
    let container: Container
    
    private init() {
        container = Container()
        registerDependencies()
    }
    
    private func registerDependencies() {
        container.register(DataService.self) { _ in
            DataServiceImpl()
        }
        
        container.register(NetworkService.self) { _ in
            NetworkServiceImpl()
        }
        
        container.register(DatabaseService.self) { _ in
            DatabaseServiceImpl()
        }
        
        container.register(ContentViewModel.self) { resolver in
            let dataService = resolver.resolve(DataService.self)!
            let networkService = resolver.resolve(NetworkService.self)!
            let databaseService = resolver.resolve(DatabaseService.self)!
            return ContentViewModel(dataService: dataService, networkService: networkService, databaseService: databaseService)
        }
    }
}
