//
//  ProfileView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct ProfileTabView: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Profile Tab View")
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
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("BackgroundColor"))
        }
    }
}

struct ProfileTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabView()
            .environmentObject(UserManager(user: User(firstName: "name", lastName: "last", email: "1@23.qwe", isLogged: true)))
    }
}
