//
//  CarouselBrands.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct CarouselBrands: View {
    
    let brands = ["Brands1", "Brands2", "Brands3"]
    let carouselTitle: String
    
    var body: some View {
        VStack {
            
            CarouselTitleView(carouselTitle: carouselTitle) {
                print("View all tapped")
            }
            .padding(.vertical, -8)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(brands, id: \.self) { num in
                        
                        LatestItemView(latest: Latest(category: "Brands", name: num, price: Double(Int.random(in: 10...100)), imageURL: ""))
                    }
                }
            }
            
        }
    }
}

struct Brands {
    let image: String
}

struct CarouselBrands_Previews: PreviewProvider {
    static var previews: some View {
        CarouselBrands(carouselTitle: "Brands")
    }
}
