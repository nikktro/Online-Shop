//
//  LatestItemView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct LatestItemView: View {
    
    let latest: Latest
    
    var body: some View {
        ZStack {

            AsyncImage(url: URL(string: latest.imageURL), content: { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 114, height: 149)
                    .cornerRadius(10)
            }) {
                Color.gray
            }
            
                VStack(alignment: .leading) {
                    Spacer()
                    
                    CapsuleTextView(text: latest.category, fontSize: 6)
                    
                    Text(latest.name)
                        .lineLimit(2)
                        .font(.custom("Montserrat-SemiBold", size: 10))
                        .foregroundColor(.white)
                    
                    Text("$ " + String(format: "%.3f", latest.price).replacingOccurrences(of: ".", with: ","))
                        .lineLimit(1)
                        .font(.custom("Montserrat-SemiBold", size: 6))
                        .foregroundColor(.white)
                        .padding(.top, 1)
                        .padding(.bottom, 6)
                    
                }
                .padding(.trailing, 30)
            
            ZStack {
                Circle()
                    .foregroundColor(Color("IconFillColor"))
                    .opacity(0.8)
                Image("ic-PlusSmall")
            }
            .frame(height: 20)
            .padding(.top, 115)
            .padding(.leading, 80)
        }
        .frame(width: 114, height: 149)
    }
}

struct LatestItemView_Previews: PreviewProvider {
    static var previews: some View {
        LatestItemView(latest: Latest(category: "Phones", name: "Samsung S10 Play Station", price: 1000, imageURL: "https://www.tradeinn.com/f/13754/137546834/microsoft-xbox-xbox-one-s-1tb-console-additional-controller.jpg"))
    }
}
