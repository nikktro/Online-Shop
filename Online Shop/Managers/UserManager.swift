//
//  UserManager.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 22.03.2023.
//

import Foundation

final class UserManager: ObservableObject {
        
    @Published var user = User()
    
    var userInputIsValid: Bool {
        print(user.firstName.count)
        print(user.lastName.count)
        print(user.email.isEmail())
        
        return user.firstName.count > 0 && user.lastName.count > 0 && user.email.isEmail()
    }
    
    init(user: User) {
        self.user = user
    }
    
    func update(user: User) {
        self.user = user
    }
    
}
