//
//  LoginViewModel.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 16.03.2023.
//

import Foundation

protocol LoginViewModelProtocol {
    var showingUserDataNotValidAlert: Bool { get }
    var firstname: String { get }
    var password: String { get }
    
    func login(with userManager: UserManager)
}

final class LoginViewModel: LoginViewModelProtocol, ObservableObject {
    
    @Published var showingUserDataNotValidAlert = false
    @Published var firstname: String = ""
    @Published var password: String = ""
    
    func login(with userManager: UserManager) {
        if firstname == userManager.user.firstName && password == "1234" {
            userManager.user.isLogged = true
            userManager.update(user: userManager.user)
            DataManager.shared.save(user: userManager.user)
        } else {
            showingUserDataNotValidAlert = true
        }
    }
    
}
