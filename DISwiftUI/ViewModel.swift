//
//  ViewModel.swift
//  DISwiftUI
//
//  Created by Никита Гуляев on 20.08.2024.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var data: String = ""
    @Published var networkData: String = ""
    @Published var databaseData: String = ""
    
    private let dataService: DataService
    private let networkService: NetworkService
    private let databaseService: DatabaseService
    
    init(dataService: DataService, networkService: NetworkService, databaseService: DatabaseService) {
        self.dataService = dataService
        self.networkService = networkService
        self.databaseService = databaseService
        loadData()
    }
    
    private func loadData() {
        self.data = dataService.fetchData()
        self.networkData = networkService.fetchNetworkData()
        self.databaseData = databaseService.fetchDatabaseData()
    }
}
