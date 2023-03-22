//
//  TextFieldView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct TextFieldView: View {
    
    let placeholderText: String
    @Binding var text: String
    
    var body: some View {
        ZStack {
            if text.isEmpty {
                Text(placeholderText)
                    .foregroundColor(Color.textFieldTextColor)
            }
            TextField("", text: $text)
                .foregroundColor(Color.titleBlackTextColor)
        }
        .font(.custom("Montserrat-Medium", size: 11))
        .foregroundColor(.titleBlackTextColor)
        .multilineTextAlignment(.center)
        .frame(height: 29)
        .background(Color.textFieldFillColor)
        .cornerRadius(15)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(placeholderText: "Placeholder", text: .constant(""))
    }
}
