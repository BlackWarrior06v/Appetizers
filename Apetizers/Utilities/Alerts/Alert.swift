//
//  Alert.swift
//  Apetizers
//
//  Created by Curi on 31/12/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
}

struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidData       = AlertItem(title: Text("Server Error"),
                                             message: Text("The data received from the server was invalid. Pleast contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidResponse   = AlertItem(title: Text("Server Error"),
                                             message: Text("Invalid response from the server. Please try again later or contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidURL        = AlertItem(title: Text("Server Error"),
                                             message: Text("There was an issue connecting to the server. If this persist, please contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidToComplete = AlertItem(title: Text("Server Error"),
                                             message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                             dismissButton: .default(Text("OK")))
    
    
    //MARK: - Account Alerts
    static let emptyFields       = AlertItem(title: Text("Empty Fields"),
                                             message: Text("Please fill out all fields."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidEmail      = AlertItem(title: Text("Invalid Email"),
                                             message: Text("Please enter a valid email."),
                                             dismissButton: .default(Text("OK")))
}
