//
//  AvatarHomeView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 23.03.2023.
//

import SwiftUI

struct AvatarHomeView: View {
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
                .overlay(Circle().stroke(Color.strokeDarkGrayColor, lineWidth: 1))
            
            Button(action: action) {
                Text(buttonTitle)
                    .font(.custom("Montserrat-Regular", size: 9))
                    .fontWeight(.regular)
                    .foregroundColor(Color.textFieldSearchColor)
            }
        }
    }
}

struct AvatarHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarHomeView(image: "SatriaAdhiPradana", height: 40, buttonTitle: "Location V", action: {})
    }
}
