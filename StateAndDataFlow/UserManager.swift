//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 14.12.2022.
//

import Combine

class UserManager: ObservableObject {
    @Published var user = User()
    
    init(user: User) {
        self.user = user
    }
    
    init() {}
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
