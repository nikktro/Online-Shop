//
//  Carousel.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct CarouselLatest: View {
    
    let carouselTitle: String
    
    var body: some View {
        VStack {
            
            CarouselTitleView(carouselTitle: carouselTitle) {
                print("View all tapped")
            }
            .padding(.vertical, -8)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(latests, id: \.name) { num in
                        LatestItemView(latest: num)
                    }
                }
            }
            
        }
    }
}

struct CarouselLatest_Previews: PreviewProvider {
    static var previews: some View {
        CarouselLatest(carouselTitle: "Latest")
    }
}
