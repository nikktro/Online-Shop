//
//  ProfileTabViewModel.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 22.03.2023.
//

import Foundation

protocol ProfileTabViewModelProtocol {
    var fullName: String { get }
    
    func changePhoto()
    func uploadItemButtonPressed()
    func profileCellPressed()
    func backButtonTapped()
    func logOut(with userManager: UserManager)
}

final class ProfileTabViewModel: ProfileTabViewModelProtocol, ObservableObject {

    @Published var fullName: String = "Satria Adhi Pradana"
    
    func changePhoto() {
        print("\(#function): change user photo tapped")
    }
    
    func uploadItemButtonPressed() {
        print("\(#function): upload item button tapped")
    }
    
    func logOut(with userManager: UserManager) {
        userManager.user.isLogged = false
        DataManager.shared.save(user: userManager.user)
    }
    
    func profileCellPressed() {
        print("\(#function): profile cell pressed")
    }
    
    func backButtonTapped() {
        print("\(#function): back button tapped")
    }
    
}
