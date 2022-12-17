//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .foregroundColor(name.count >= 3 ? .green : .red)
            }.padding()
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(name.count >= 3 ? false : true)
        }
    }
    
    private func registerUser() {
            userManager.name = name
            userManager.isRegister.toggle()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
