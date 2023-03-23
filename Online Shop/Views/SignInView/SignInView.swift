//
//  SignInView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct SignInView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    @StateObject private var viewModel = SignInViewModel()
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack { Spacer() }
                
                VStack() {
                    Text("Sign in")
                        .font(.custom("Montserrat-Regular", size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("TitleLargeTextColor"))
                        .padding(.top, 125.0)
                    
                    VStack(spacing: 35) {
                        TextFieldView(placeholderText: "First name", text: $viewModel.user.firstName)
                        TextFieldView(placeholderText: "Last name", text: $viewModel.user.lastName)
                        TextFieldView(placeholderText: "Email", text: $viewModel.user.email)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                        
                        SubmitButtonView(title: "Sign in", action: {
                            viewModel.signIn(with: userManager)
                        })
                    }
                    .padding(.top, 60)
                    .focused($focusedField)
                    .onTapGesture {}
                    
                    HStack() {
                        Text("Already have an account?")
                            .foregroundColor(Color.textFieldTextColor)
                        
                        Button {
                            viewModel.loginButton()
                        } label: {
                            Text("Log in")
                                .foregroundColor(Color.buttonBlueTextColor)
                        }
                        NavigationLink("",
                                       destination: LoginView(),
                                       isActive: $viewModel.showingLoginView)
                        
                        Spacer()
                    }
                    .font(.custom("Montserrat-Medium", size: 10))
                    .padding(.top, 8)
                    
                    VStack (spacing: 38) {
                        SignWithView(signCompany: "Google",
                                     textOffsetX: 3,
                                     textOffsetY: 3
                        ) { viewModel.googleSignInButton() }
                            .padding(.trailing, 23)
                        
                        SignWithView(signCompany: "Apple",
                                     textOffsetX: 5,
                                     textOffsetY: 0
                        ) { viewModel.appleSignInButton() }
                            .padding(.trailing, 34)
                    }
                    .padding(.top, 64)
                    
                }
                .frame(width: 289)
                
            }
            .alert("Please check details", isPresented: $viewModel.showingUserDataNotValidAlert) {
            } message: {
                Text("User data empty or not valid")
            }
            
            .alert("E-mail already exist", isPresented: $viewModel.showingExistingUserAlert) {
            } message: {
                Text("Please proceed to login")
            }

            .onTapGesture {
                focusedField = false
            }
            .background(Color("BackgroundColor"))

        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
