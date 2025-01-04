//
//  Order.swift
//  Apetizers
//
//  Created by Curi on 03/01/25.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var APOrder: [Apetizer] = []
    
    var totalPrice: Double {
        APOrder.reduce(0) { $0 + $1.price }
    }
    
    func add(_ apetizer: Apetizer) {
        APOrder.append(apetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        APOrder.remove(atOffsets: offsets)
    }
    
}
