//
//  ContentView.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 11/29/23.
//

import SwiftUI

struct ChefDomTabView: View {
    var body: some View {
        
        
        TabView {
            MenuListView()
                .tabItem {
                    Label("Menu", systemImage: "menucard")
                }
             CustomerView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
             OrderView()
                .tabItem {
                    Label("Order", systemImage: "doc.text.image")
                }
                .padding()
        }
        .tint(Color("brandColor"))
   
    }
}

#Preview {
    ChefDomTabView().environmentObject(Order())
}

