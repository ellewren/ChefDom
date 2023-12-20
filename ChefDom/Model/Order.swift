//
//  Order.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/10/23.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [MenuItem] = []
    
}
