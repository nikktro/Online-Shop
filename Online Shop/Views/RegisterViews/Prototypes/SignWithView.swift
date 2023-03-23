//
//  SignWithView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 10.03.2023.
//

import SwiftUI

struct SignWithView: View {
    
    let signCompany: String
    let textOffsetX: CGFloat
    let textOffsetY: CGFloat
    let action: () -> Void
    
    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                Image("ic-\(signCompany.lowercased())")
                    .padding(.trailing, textOffsetX)
                Text("Sign in with \(signCompany)")
                    .font(.custom("Montserrat-Medium", size: 12))
                    .foregroundColor(Color.titleBlackTextColor)
                    .padding(.top, textOffsetY)
                    
            }
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        SignWithView(signCompany: "Apple", textOffsetX: 4, textOffsetY: 4, action: {} )
    }
}
