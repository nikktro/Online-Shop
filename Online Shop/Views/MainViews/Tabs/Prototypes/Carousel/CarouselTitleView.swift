//
//  CarouselTitleView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct CarouselTitleView: View {
    
    let carouselTitle: String
    var action: () -> Void
    
    var body: some View {
        HStack {
            Text(carouselTitle)
                .font(.custom("Montserrat-Bold", size: 14))
                .foregroundColor(Color.titleBlackTextColor)
            
            Spacer()
            
            Button (action: action) {
                Text("View all")
                    .font(.custom("Montserrat-SemiBold", size: 8))
                    .foregroundColor(Color.textFieldSearchColor)
            }
            .padding(.horizontal, 8)
        }
        
    }
}

struct CarouselTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTitleView(carouselTitle: "SomeTitle") {}
    }
}
