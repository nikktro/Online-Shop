//
//  ProfileView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct ProfileTabView: View {
    @EnvironmentObject private var userManager: UserManager
    @StateObject private var viewModel = ProfileTabViewModel()
    
    var body: some View {
        NavigationView {

            VStack(spacing: 40) {
                
                VStack {
                    Image("SatriaAdhiPradana")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(height: 60)
                    
                    Button {
                        viewModel.changePhoto()
                    } label: {
                        Text("Change photo")
                            .font(.custom("Montserrat-Regular", size: 9))
                            .fontWeight(.regular)
                            .foregroundColor(Color("ButtonGrayTextColor"))
                    }
                    
                    Text(viewModel.fullName)
                        .font(.custom("Montserrat-Regular", size: 17))
                        .fontWeight(.bold)
                        .foregroundColor(Color("TitleDarkGrayTextColor"))
                        .padding(.top, 10.0)
                    
                    
                    SubmitButtonView(title: "Upload item", image: "UploadItem") {
                        viewModel.uploadItemButtonPressed()
                    }
                    .padding(.top, 20)
                    
                    VStack {
                        ProfileCells(text: "Trade store", image: "CrefitCard", isNavigation: "RightArrow")
                        ProfileCells(text: "Payment method", image: "CrefitCard", isNavigation: "RightArrow")
                        ProfileCells(text: "Balance", image: "CrefitCard", additionalInfo: "$ 1593")
                        ProfileCells(text: "Trade history", image: "CrefitCard", isNavigation: "RightArrow")
                        ProfileCells(text: "Restore Purchase", image: "Restore", isNavigation: "RightArrow")
                        ProfileCells(text: "Help", image: "Help")
                        ProfileCells(text: "Log Out", image: "Logout", action: { viewModel.logOut(with: userManager) })
                    }
                    .frame(width: 300)

                    Spacer()
                }
                .frame(width: 290)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        viewModel.backButtonTapped()
                    } label: {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.black)
                            .font(.system(size: 17, weight: .medium))
                    }
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
