//
//  DataManager.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 17.03.2023.
//

import SwiftUI

class DataManager: ObservableObject {
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func loadUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    
    func isExist(email: String) -> Bool {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return false }
        return user.email == email
    }
    
}

 
