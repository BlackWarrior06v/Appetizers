//
//  ApetizersApp.swift
//  Apetizers
//
//  Created by Curi on 27/12/24.
//

import SwiftUI

@main
struct ApetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ApetizerTabView().environmentObject(order)
        }
    }
}
