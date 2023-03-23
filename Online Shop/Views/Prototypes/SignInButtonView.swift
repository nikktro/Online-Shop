//
//  SignInButtonView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct SignInButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action ) {
            Text(title)
                .font(.custom("Montserrat-Regular", size: 14))
                .fontWeight(.bold)
                .foregroundColor(Color.buttonWhiteTextColor)
                .frame(height: 46)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 46)
        .background(Color.buttonFillColor)
        .cornerRadius(16)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInButtonView(title: "Sign In", action: {} )
    }
}
