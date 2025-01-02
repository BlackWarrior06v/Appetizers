//
//  User.swift
//  Apetizers
//
//  Created by Curi on 01/01/25.
//

import Foundation

struct User: Codable {
    
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    
}
