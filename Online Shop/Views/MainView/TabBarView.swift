//
//  TabBarView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 22.03.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            FavouritesTabView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favourites")
                }
            
            CartTabView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            
            ChatTabView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Messages")
                }
            
            ProfileTabView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
