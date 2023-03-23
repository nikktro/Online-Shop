//
//  PasswordFieldView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 14.03.2023.
//

import SwiftUI

struct PasswordFieldView: View {
    
    @Binding var password: String
    @State private var showPassword = false
        
    var body: some View {
        VStack {
            ZStack() {
                if password.isEmpty {
                    Text("Password")
                        .foregroundColor(Color.textFieldTextColor)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                if showPassword {
                    TextField("", text: $password)
                } else {
                    SecureField("", text: $password)
                }
                
                HStack() {
                    Spacer()
                    Button(action: { self.showPassword.toggle() }) {
                        Image("ic-eyeslash")
                    }
                    .padding(.trailing, 16)
                }
                
            }
            
            .font(.custom("Montserrat-Medium", size: 11))
            .foregroundColor(Color.titleBlackTextColor)
            .multilineTextAlignment(.center)
            .frame(height: 29)
            .background(Color.textFieldFillColor)
            .cornerRadius(15)
        }
    }
}

struct PasswordFieldView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordFieldView(password: .constant(""))
    }
}
