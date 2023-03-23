//
//  SignInViewModel.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 16.03.2023.
//

import SwiftUI

protocol SignInViewModelProtocol {
    var user: User { get set }
    var showingUserDataNotValidAlert: Bool { get set }
    var showingExistingUserAlert: Bool { get set }
    var showingLoginView: Bool { get set }
    var userInputIsValid: Bool { get }
    
    func signIn(with userManager: UserManager)
    func loginButton()
    func googleSignInButton()
    func appleSignInButton()
}

final class SignInViewModel: SignInViewModelProtocol, ObservableObject {
    
    @Published var user = User()
    @Published var showingUserDataNotValidAlert = false
    @Published var showingExistingUserAlert = false
    @Published var showingLoginView = false

    var userInputIsValid: Bool {
        user.firstName.count > 0 && user.lastName.count > 0 && user.email.isEmail()
    }
    
    func signIn(with userManager: UserManager) {
        
        if userInputIsValid {
            if DataManager.shared.isExist(email: user.email) {
                showingExistingUserAlert = true
                return
            }
            
            user.isLogged = true
            userManager.update(user: user)
            DataManager.shared.save(user: user)

        } else {
            showingUserDataNotValidAlert = true
        }
    }
    
    func loginButton() {
        showingLoginView = true
    }
    
    func googleSignInButton() {
        print("ViewModel: You tapped Google sign in!")
    }
    
    func appleSignInButton() {
        print("ViewModel: You tapped Apple sign in!")
    }
    
}

