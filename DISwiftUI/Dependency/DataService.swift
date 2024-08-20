//
//  DataService.swift
//  DISwiftUI
//
//  Created by Никита Гуляев on 20.08.2024.
//

import Foundation

protocol DataService {
    func fetchData() -> String
}

protocol NetworkService {
    func fetchNetworkData() -> String
}

protocol DatabaseService {
    func fetchDatabaseData() -> String
}

class DataServiceImpl: DataService {
    func fetchData() -> String {
        return "Hello from DataService!"
    }
}

class NetworkServiceImpl: NetworkService {
    func fetchNetworkData() -> String {
        return "Data from Network!"
    }
}

class DatabaseServiceImpl: DatabaseService {
    func fetchDatabaseData() -> String {
        return "Data from Database!"
    }
}
