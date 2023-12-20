//
//  OrderView.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 11/29/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { menuItem in
                            MenuListCell(menuItem: menuItem)
                        }
                        .onDelete(perform: { indexSet in
                            order.items.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())

                    Button {
                        print("Order Placed")
                    } label: {
                        PurchaseButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                }
                .navigationTitle("Order")
                .navigationBarItems(leading: Image("Logo")
                                        .resizable()
                                        .frame(width: 50, height: 50))
            }
            
            if order.items.isEmpty {
                EmptyState(imageName: "bag", message: "Order some shit mf")
            }
        }
    }
}


#Preview {
    OrderView().environmentObject(Order())
}
