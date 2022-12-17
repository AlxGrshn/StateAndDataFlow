//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Alexander Grishin on 17.12.2022.
//

import SwiftUI

class DataManager {
    static let shared = DataManager()
    
    private let defaults = UserDefaults.standard
    private let nameKey = "userName"
    private let isRegisterKey = false
    
    func save (name: String) {
        let name = fetchName()
        defaults.set(name, forKey: nameKey)
    }
    
    func fetchName () -> String {
        if let userName = defaults.value(forKey: nameKey) as? String {
            return userName
        }
        return ""
    }
    func deleteName (at index: Int) {
        var name = fetchName()
        name = ""
        defaults.set(name, forKey: nameKey)
    }
    
    private init() {}
}
