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
    @FocusState private var focusedField: Bool
        
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        Text("Loading...")
                        ActivityIndicator(isAnimating: .constant(true), style: .large)
                    }
                    .frame(width: 150, height: 100)
                    .background(Color.secondary.colorInvert())
                    .foregroundColor(Color.primary)
                    .cornerRadius(20)
                    .opacity(viewModel.isFetchingDone ? 0.0 : 1.0)
                    
                    VStack {
                        SearchBarView(searchQueryText: $viewModel.searchQueryText) { viewModel.searchButtonTapped() }
                            .frame(width: 260)
                            .focused($focusedField)
                        
                        ProductCategoryBarView(selectedIndex: .constant(0), barItemNames: viewModel.categories)
                            .padding(.leading, 8)
                            .padding(.top, 8)
                        
                        ScrollView(showsIndicators: false) {
                            CarouselLatest(carouselTitle: "Latest", latests: viewModel.latests)
                                .padding(.top, 30)
                                
                            CarouselFlashSale(carouselTitle: "Flash Sale", flashSales: viewModel.flashSales)
                                .padding(.top, 12)
                            
                            CarouselBrands(carouselTitle: "Brands")
                                .padding(.top, 12)
                                
                            
                        }
                        .padding(.horizontal, 8)
                        .padding(.bottom, 40)
                        .opacity(viewModel.isFetchingDone ? 1.0 : 0.0)
                        .onTapGesture {
                            focusedField = false
                        }
                        
                        Spacer()
                    }
                    .padding(.top, 16)
                    .onTapGesture {
                        focusedField = false
                    }
                    .onAppear {
                        Task {
                            await viewModel.fetchRequest()
                        }
                    }
                    
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
