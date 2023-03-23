//
//  HomeTabView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct HomeTabView: View {
    
    @EnvironmentObject private var userManager: UserManager
    @ObservedObject var viewModel = HomeTabViewModel()
        
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("page 1")
                        .opacity(0.0)
                        .padding(.top, -54)
                    
                    VStack {
                        SearchBarView(searchQueryText: $viewModel.searchQueryText)
                            .frame(width: 260)
                        
                        ProductCategoryBarView(selectedIndex: .constant(0), barItemNames: viewModel.categories)
                        
                        Spacer()
                        
                    }
                    .padding(.top, 56)
                    
                }
            }
                        
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        print("Left Menu button tapped")
                    } label: {
                        Image("Menu")
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Trade by")
                            .fontWeight(.bold)
                            
                        
                        Text("bata")
                            .fontWeight(.bold)
                            .foregroundColor(Color.buttonFillColor)
                    }
                    .font(.custom("Montserrat-Regular", size: 20))
                    .foregroundColor(Color.titleBlackTextColor)
                    .padding(.trailing, 30)
                    
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Avatar Menu button tapped")
                    } label: {
                        VStack {
                            AvatarProfileView(image: "SatriaAdhiPradana", height: 30, buttonTitle: "Location ⅴ") {}
                        }
                    }
                    .padding(.trailing, 24)
                    .padding(.top, 17)
                }
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.backgroundColor)
        }
    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
