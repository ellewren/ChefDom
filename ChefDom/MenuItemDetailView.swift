//
//  MenuItemDetailView.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/4/23.
//

import SwiftUI

struct MenuItemDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let menuItems: MenuItem
    
    @Binding var showingDishDetail: Bool
    
    
    var body: some View {
        
        
        
        VStack {
            menuItems.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 150)
                

            VStack {
                Spacer()
                Text(menuItems.dish)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                Text(menuItems.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                
            }
            
            Button {
                order.items.append(menuItems)
            } label: {
                PurchaseButton(title: "$\(menuItems.price, specifier: "%.2f") - Add to Order")
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            showingDishDetail = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color(.white))
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundStyle(Color(.black))
            }
        }, alignment: .topTrailing)
    }
}

#Preview {
    MenuItemDetailView(menuItems: Menu.phillyCheese, showingDishDetail: .constant(true))
}

