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
                        .listRowSeparator(.hidden)
//                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedApetizer = apetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍕 Appetizers")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear {
                viewModel.getApetizers()
            }
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                DetailView(apetizer: viewModel.selectedApetizer!, isShowingDetail: $viewModel.isShowingDetail)
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
