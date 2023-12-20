//
//  MenuListCell.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/11/23.
//

import SwiftUI

struct MenuListCell: View {
    
    let menuItem: MenuItem
    
    var body: some View {
        HStack {
            menuItem.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 100)
            VStack(alignment: .leading, spacing: 5) {
                Text(menuItem.dish)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(menuItem.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.bold)
            }
            .padding(.leading)
            
            
        }
    }
}

#Preview {
    MenuListCell(menuItem: Menu.seafoodBoil)
}
