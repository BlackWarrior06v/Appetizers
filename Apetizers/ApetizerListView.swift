//
//  ApetizerListView.swift
//  Apetizers
//
//  Created by Curi on 27/12/24.
//

import SwiftUI

struct ApetizerListView: View {
    
    @StateObject private var viewModel = ApetizerListViewModel()
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List(viewModel.apetizers) { apetizer in
                    ApetizerListCell(apetizer: apetizer)
                }
                .navigationTitle("🍕 Appetizers")
            }
            .onAppear {
                viewModel.getApetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }
    
}

#Preview {
    ApetizerListView()
}
