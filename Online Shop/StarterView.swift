//
//  StarterView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 21.03.2023.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        Group {
            
            if userManager.user.isLogged {
                TabBarView()
                    .environmentObject(userManager)
            } else {
                SignInView()
                    .environmentObject(userManager)
            }
            
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
