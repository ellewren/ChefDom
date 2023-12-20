//
//  CustomerView.swift
//  ChefDom
//
//  Created by LaKeisha Wren on 11/29/23.
//

import SwiftUI

struct CustomerView: View {

    
   @StateObject var customerModel = CustomerViewModel()
    
    var body: some View {
    
        NavigationStack {
            Form {
                Section(header: Text("Customer Information")) {
                    TextField("First Name", text: $customerModel.user.firstName)
                    TextField("Last Name", text: $customerModel.user.lastName)
                    TextField("Phone Number", text: $customerModel.user.phoneNumber)
                        .keyboardType(.numberPad)
                        .autocorrectionDisabled(true)
                    TextField("Email", text: $customerModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled(true)
                        .textInputAutocapitalization(.never)
                }
                
                Section(header: Text("Delivery Address")) {
                    TextField("Street Address", text: $customerModel.user.streetAddress)
                    TextField("City", text: $customerModel.user.city)
                    TextField("Zip Code", text: $customerModel.user.zip)

                }
                
                Section(header: Text("Extras")) {
                    Toggle("Napkins", isOn: $customerModel.user.napkins)
                    Toggle("Silverware", isOn: $customerModel.user.silverware)
                        
                }
                
                    
                
                
                
            }
            .toggleStyle(SwitchToggleStyle(tint: Color("brandColor")))
            .scrollContentBackground(.hidden)
            
            
            VStack {
                
                Button {
                    customerModel.saveChanges()
                } label: {
                    PurchaseButton(title: "Save")
                }
                
                
            }
            
            .onAppear {
                customerModel.retrieveUser()
            }
            
            .padding()
            
            
            
            .navigationTitle("Account")
            .navigationBarItems(leading: Image("Logo")
                                    .resizable()
                                    .frame(width: 50, height: 50))
            
            .alert(item: $customerModel.alertItem) { alertItem in
                Alert(title: alertItem.title, 
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)}
        }
    }
        
}

#Preview {
    CustomerView()
}
