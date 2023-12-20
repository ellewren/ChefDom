//
//  PurchaseButton.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/5/23.
//

import SwiftUI

struct PurchaseButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
        .frame(width: 200, height: 50)
        .background(Color("brandColor"))
        .tint(.white)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 8)))
        .padding(.bottom, 30)
    }
}

#Preview {
    PurchaseButton(title: "Test Button")
}
