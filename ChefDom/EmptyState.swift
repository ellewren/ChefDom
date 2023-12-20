//
//  EmptyState.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 12/8/23.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            
            VStack{
                 Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyState(imageName: "bag", message: "Order some shit")
}
