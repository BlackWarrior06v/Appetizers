//
//  ContentView.swift
//  Apetizers
//
//  Created by Curi on 27/12/24.
//

import SwiftUI

struct ApetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            ApetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            
            ApetizerAccountView()
                .tabItem { Label("Account", systemImage: "person") }
            
            OrderView()
                .tabItem { Label("Order", systemImage: "bag") }
                .badge(order.APOrder.count)
        }
    }
}

#Preview {
    ApetizerTabView()
}
