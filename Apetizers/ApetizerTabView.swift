//
//  ContentView.swift
//  Apetizers
//
//  Created by Curi on 27/12/24.
//

import SwiftUI

struct ApetizerTabView: View {
    var body: some View {
        TabView {
            ApetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ApetizerAccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    ApetizerTabView()
}
