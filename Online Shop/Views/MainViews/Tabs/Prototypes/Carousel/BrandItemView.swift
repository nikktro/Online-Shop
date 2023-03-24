//
//  BrandItemView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct BrandItemView: View {
    
    let name: String
    var body: some View {

        ZStack {
            Image(uiImage: UIImage(named: name) ?? UIImage())
                .resizable()
                .scaledToFill()
                .frame(width: 114, height: 149)
                .cornerRadius(10)
            Text(name)
                .lineLimit(1)
                .font(.custom("Montserrat-Bold", size: 12))
                .foregroundColor(.white)
                .padding(.top, 110)
        }
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(name: "Brands1")
    }
}
