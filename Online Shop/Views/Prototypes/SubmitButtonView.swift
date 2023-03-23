//
//  SubmitButtonView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct SubmitButtonView: View {
    let title: String
    var image: String? = nil
    let action: () -> Void
    
    var body: some View {
        Button(action: action ) {
            ZStack(alignment: .center) {
                if image != nil { Image(image ?? "").padding(.trailing, 190) }
                Text(title)
                    .fontWeight(.bold)
            }
                .font(.custom("Montserrat-Regular", size: 14))
                .foregroundColor(Color.buttonWhiteTextColor)
                .frame(height: 46)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 46)
        .background(Color.buttonFillColor)
        .cornerRadius(16)
    }
}

struct SubmitButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SubmitButtonView(title: "Sign In", action: {} )
    }
}
