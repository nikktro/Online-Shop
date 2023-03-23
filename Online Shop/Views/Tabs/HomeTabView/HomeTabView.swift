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
                ZStack {
                    Image("page 1")
                        .opacity(0.5)
                        .padding(.top, 0)
                    
                    Spacer()
                    

                    
                }
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .background(Color("BackgroundColor")) 
    }

}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
