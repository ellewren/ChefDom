//
//  MenuListView.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 11/29/23.
//

import SwiftUI

struct MenuListView: View {
    
    @State private var showingDishDetail = false
    @State private var selectedMenuItem: MenuItem? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(Menu.menuItems) { menuItem in
                        MenuListCell(menuItem: menuItem)
                        
                        
                        
                        .onTapGesture {
                            selectedMenuItem = menuItem
                            showingDishDetail = true
                        
                        }
                        .id(menuItem.id) // Ensure each item has a unique identifier
                    }
                }
                .blur(radius: showingDishDetail ? 100 : 0)
                .disabled(showingDishDetail)
                
                .listStyle(PlainListStyle())
                
                if showingDishDetail {
                    if let selectedMenuItem = selectedMenuItem, showingDishDetail {
                        MenuItemDetailView(menuItems: selectedMenuItem, showingDishDetail: $showingDishDetail)                }
                }
            }
            .navigationTitle("Menu")
            .navigationBarItems(leading: Image("Logo")
                                    .resizable()
                                    .frame(width: 50, height: 50))
        }
        
    }
}



#Preview {
    MenuListView()
}
