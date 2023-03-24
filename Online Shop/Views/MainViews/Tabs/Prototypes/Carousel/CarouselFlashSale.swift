//
//  CarouselFlashSale.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct CarouselFlashSale: View {
    
    let carouselTitle: String
    
    var body: some View {
        VStack {
            
            CarouselTitleView(carouselTitle: carouselTitle) {
                print("View all tapped")
            }
            .padding(.vertical, -2)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(flashSales, id: \.name) { num in
                        FlashSaleItemView(flashSale: num)
                    }
                }
            }
            
        }
    }
}

struct CarouselFlashSale_Previews: PreviewProvider {
    static var previews: some View {
        CarouselFlashSale(carouselTitle: "Flash Sale")
    }
}
