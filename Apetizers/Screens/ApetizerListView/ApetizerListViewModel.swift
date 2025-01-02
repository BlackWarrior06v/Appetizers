//
//  NetworkApetizerViewModel.swift
//  Apetizers
//
//  Created by Curi on 31/12/24.
//

import SwiftUI

final class ApetizerListViewModel: ObservableObject{
    
    @Published var apetizers: [Apetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedApetizer: Apetizer?
    
    func getApetizers() {
        self.isLoading = true
        NetworkManager.shared.getApetizers { result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let apetizers):
                    self.apetizers = apetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.invalidToComplete
                    }
                }
            }
        }
    }
    
}
