//
//  Apetizer.swift
//  Apetizers
//
//  Created by Curi on 27/12/24.
//

import Foundation

struct Apetizer: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct ApetizerResponse: Decodable {
    
    let request: [Apetizer]
    
}

struct MockData {
    
    static let sampleApetizer = Apetizer(id: 1,
                                         name: "Test appetizer",
                                         description: "This is a test apetizer",
                                         price: 9.99,
                                         imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 123)
    
    static let apetizer = [sampleApetizer,sampleApetizer,sampleApetizer,sampleApetizer]
    
}
