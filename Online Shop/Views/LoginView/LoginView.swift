//
//  LoginView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    @ObservedObject var viewModel = LoginViewModel()
    @FocusState private var focusedField: Bool
    
    var body: some View {
        ScrollView {
            HStack { Spacer() }
            
            VStack {
                Text("Welcome back")
                    .font(.custom("Montserrat-Regular", size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("TitleLargeTextColor"))
                    .padding(.top, 109.0)
                
                VStack(spacing: 35) {
                    
                    TextFieldView(placeholderText: "First name", text: $viewModel.firstname)
                    
                    PasswordFieldView(password: $viewModel.password)
                        .padding(.bottom, 64)
                    
                    SignInButtonView(title: "Login", action: {
                        viewModel.login(with: userManager)
                    } )
                    
                }
                .padding(.top, 58)
                .focused($focusedField)
                .onTapGesture {}
                
                Spacer()
            }
            .frame(width: 289)
            
            .alert("Wrong Credentials", isPresented: $viewModel.showingUserDataNotValidAlert) {
            } message: {
                Text("Invalid username or password")
            }
            
        }
        .onTapGesture {
            focusedField = false
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel())
    }
}
