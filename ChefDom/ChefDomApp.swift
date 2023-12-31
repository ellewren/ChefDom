//
//  ChefDomApp.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 11/29/23.
//

import SwiftUI

@main
struct ChefDomApp: App {
    
    var order = Order()
    
    var body: some Scene {
        
        WindowGroup {
            ChefDomTabView().environmentObject(order)
        }
    }
}
