//
//  TabBarView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 22.03.2023.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedIndex = 0
    let tabBarImages = ["HomeButton", "Heart", "Cart", "Chat", "User"]
        
    var body: some View {
        ZStack {
            switch selectedIndex {
                case 0:
                    HomeTabView()
                case 1:
                    FavouritesTabView()
                case 2:
                    CartTabView()
                case 3:
                    ChatTabView()
                default:
                    ProfileTabView()
            }
            
            TabBar(selectedIndex: $selectedIndex, tabBarImages: tabBarImages)
            
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(UserManager(user: User(firstName: "name", lastName: "last", email: "email@my.work", isLogged: true))) // TODO: add stub
    }
}
