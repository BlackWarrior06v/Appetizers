//
//  OrderView.swift
//  Apetizers
//
//  Created by Curi on 27/12/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.APOrder) { apetizer in
                            ApetizerListCell(apetizer: apetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order Submitted")
                    } label: {
                        APButton(title: "Total: $\(order.totalPrice, specifier: "%.2f")")
                    }
                }
                
                if (order.APOrder.isEmpty) {
                    EmptyState(imageName: "basket", message: "No order to handle")
                }
                
            }
            .navigationTitle("📄 Order")
        }
    }
}

#Preview {
    OrderView()
}
