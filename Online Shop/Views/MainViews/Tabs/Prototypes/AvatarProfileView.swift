//
//  AvatarView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 23.03.2023.
//

import SwiftUI

struct AvatarProfileView: View {
    let image: String
    let height: CGFloat
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(height: height)
                .overlay(Circle().stroke(Color.strokeLightGrayColor, lineWidth: 1))
            
            Button(action: action) {
                Text(buttonTitle)
                    .font(.custom("Montserrat-Regular", size: 9))
                    .fontWeight(.regular)
                    .foregroundColor(Color.buttonGrayTextColor)
            }
        }
    }
}

struct AvatarProfileView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarProfileView(image: "SatriaAdhiPradana", height: 60, buttonTitle: "Change photo ⅴ⛛", action: {})
    }
}
