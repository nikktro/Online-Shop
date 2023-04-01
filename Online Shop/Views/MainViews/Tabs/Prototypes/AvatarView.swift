//
//  AvatarView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 01.04.2023.
//

import SwiftUI

struct AvatarView: View {
    let image: String
    let height: CGFloat
    let buttonTitle: String
    let imageStrokeColor: Color
    let textColor: Color
    let action: () -> Void
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(height: height)
                .overlay(Circle().stroke(imageStrokeColor, lineWidth: 1))
            
            Button(action: action) {
                Text(buttonTitle)
                    .font(.custom("Montserrat-Regular", size: 9))
                    .fontWeight(.regular)
                    .foregroundColor(textColor)
            }
        }
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: "SatriaAdhiPradana", height: 60, buttonTitle: "Change photo", imageStrokeColor: .gray, textColor: .black, action: {})
    }
}
