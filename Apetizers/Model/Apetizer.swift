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
    
    static let sampleApetizer = Apetizer(id: 0001,
                                         name: "Test appetizer",
                                         description: "This is a test apetizer",
                                         price: 9.99,
                                         imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 123)
    
    static let apetizer       = [sampleApetizer,sampleApetizer,sampleApetizer,sampleApetizer]
    
    static let orderApetizer1 = Apetizer(id: 0001,
                                         name: "Test appetizer 1",
                                         description: "This is a test apetizer",
                                         price: 9.99,
                                         imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 123)
    
    static let orderApetizer2 = Apetizer(id: 0002,
                                         name: "Test appetizer 2",
                                         description: "This is a test apetizer",
                                         price: 9.99,
                                         imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 123)
    
    static let orderApetizer3 = Apetizer(id: 0003,
                                         name: "Test appetizer 3",
                                         description: "This is a test apetizer",
                                         price: 9.99,
                                         imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/chicken-avocado-spring-roll.jpg",
                                         calories: 99,
                                         protein: 99,
                                         carbs: 123)
    
    static var orderApetizers = [orderApetizer1,orderApetizer2,orderApetizer3]
    
}
