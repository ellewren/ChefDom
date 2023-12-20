//
//  Alerts.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/8/23.
//

import SwiftUI



struct AlertItem: Identifiable {
    let id =  UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidForm = AlertItem (title: Text("Invalid Form"),
                                        message: Text("Please ensure all fields in the form have been filled out."),
                                        dismissButton:  .default(Text("OK")))
    
    static let invalidEmail = AlertItem (title: Text("Invalid Email"),
                                        message: Text("Please ensure your email is correct."),
                                        dismissButton:  .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                           message: Text("Your profile has saved successfully."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                           message: Text("There was an error loading or saving your profile."),
                                           dismissButton: .default(Text("OK")))
}

