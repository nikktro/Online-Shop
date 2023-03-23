//
//  ProfileCells.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 23.03.2023.
//

import SwiftUI


struct ProfileCells: View {
    
    @State var text: String
    @State var image: String
    @State var isNavigation: String?
    @State var additionalInfo: String?
    @State var action: (() -> Void)?
    
    let textFontSize = CGFloat(14)
    
    var body: some View {
        
        Button (action: action ?? {}) {
            HStack {
                ZStack {
                    Circle()
                        .frame(height: 40)
                        .foregroundColor(Color("IconFillColor"))
                    Image(image)
                }
                .padding(.trailing, 6)
                
                Text(text)
                    .font(.custom("Montserrat-Regular", size: textFontSize))
                    .fontWeight(.medium)
                    .foregroundColor(Color.titleSmallTextColor)
                
                Spacer()
                
                if isNavigation != nil {
                    Image(isNavigation ?? "")
                } else if additionalInfo != nil {
                    Text(additionalInfo ?? "")
                        .font(.custom("Montserrat-Regular", size: textFontSize))
                        .fontWeight(.medium)
                        .foregroundColor(Color.titleSmallTextColor)
                }
            }
            .padding(.top, 8)
            
        }
    }
}

struct ProfileCells_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCells(text: "Trade store", image: "CrefitCard", additionalInfo: "$ 1593") { }
    }
}
