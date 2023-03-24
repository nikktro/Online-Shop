//
//  FlashSaleItemView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct FlashSaleItemView: View {
    
    let flashSale: FlashSale
    
//    let category: String
//    let name: String
//    let price: String
//    let image: UIImage
//    let discount: Int
//    let store: String
//    let isFavourite: Bool
    
    // TODO: Spacer instead padding
    
    var body: some View {
        ZStack {
            
            Image(uiImage: UIImage(named: "FlashSale") ?? UIImage()) // TODO: Async load from URL
                .resizable()
                .scaledToFill()
                .frame(width: 174, height: 221)
                .cornerRadius(8)
            
            Image("ic-User")
                .padding(.top, -103)
                .padding(.leading, -80)
            
            DiscountView(discount: flashSale.discount)
                .padding(.top, -103)
                .padding(.leading, 110)
            
            VStack(alignment: .leading) {
                Spacer()
                
                CapsuleTextView(text: flashSale.category, fontSize: 11)
                
                Text(flashSale.name)
                    .lineLimit(2)
                    .font(.custom("Montserrat-Bold", size: 14))
                    .foregroundColor(.white)
                
                Text("$ " + String(format: "%.2f", flashSale.price).replacingOccurrences(of: ".", with: ","))
                    .lineLimit(1)
                    .font(.custom("Montserrat-Bold", size: 12))
                    .foregroundColor(.white)
                    .padding(.top, 1)
                    .padding(.bottom, 6)
                
            }
            .frame(width: 114, height: 149)
            .padding(.trailing, 55)
            .padding(.top, 50)
            
            HStack(spacing: 5) {
                ZStack {
                    Circle()
                        .foregroundColor(Color("IconFillColor"))
                        .opacity(0.8)
                    Image("ic-Heart")
                }
                .frame(height: 28)
                
                ZStack {
                    Circle()
                        .foregroundColor(Color("IconFillColor"))
                        .opacity(0.8)
                    Image("ic-PlusLarge")
                }
                .frame(height: 35)
            }
            .padding(.top, 170)
            .padding(.leading, 96)
            
        }
    }
}

struct FlashSaleItemView_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleItemView(flashSale: FlashSale(category: "Kids", name: "New balance sneakers", price: 33.5, discount: 30, imageURL: "https://newbalance.ru/upload/iblock/697/iz997hht_nb_02_i.jpg"))
    }
}
                            
                        
