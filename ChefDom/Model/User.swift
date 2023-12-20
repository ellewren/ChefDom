//
//  User.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/8/23.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var phoneNumber = ""
    var streetAddress = ""
    var city = ""
    var zip = ""
    var deliveryDate = Date()
    var napkins = false
    var silverware = false
    
}
