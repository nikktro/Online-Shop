//
//  HomeTabView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct HomeTabView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        
        VStack {
            Text("Hello!")
                .font(.title)
                .fontWeight(.bold)
            Text("FirstName: \(userManager.user.firstName)")
            Text("LastName: \(userManager.user.lastName)")
            Text("Email: \(userManager.user.email)")
            Text("isLogged: \(String(userManager.user.isLogged))")
            
            Button("DeAuth") {
                userManager.user.isLogged = false
                DataManager.shared.save(user: userManager.user)
            }
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
