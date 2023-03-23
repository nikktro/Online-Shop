//
//  ProductCategoryBarView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 23.03.2023.
//

import SwiftUI

struct ProductCategoryBarView: View {
    
    @Binding var selectedIndex: Int
    let barItemNames: [String]
    
    var body: some View {
        HStack {
            ForEach(0..<barItemNames.count, id: \.self) { index in
                Button {
                    selectedIndex = index
                } label: {
                    Spacer()
                    VStack {
                        ZStack {
                            Circle()
                                .frame(height: 40)
                                .foregroundColor(Color("IconFillColor"))
                            Image(barItemNames[index])
                        }
                        Text(barItemNames[index])
                            .font(.custom("Montserrat-SemiBold", size: 8))
                            .foregroundColor(Color.iconBarGrayTextColor)
                            .lineLimit(0)
                            .padding(.top, 2)
                    }
                    Spacer()
                }
            }
        }
        .padding(.trailing, 8)
        .padding(.leading, 8)
        .padding(.top, 10)
    }
}

struct ProductCategoryBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCategoryBarView(selectedIndex: .constant(0), barItemNames: ["Phones", "Headphones", "Games", "Cars", "Furniture", "Kids"])
    }
}
