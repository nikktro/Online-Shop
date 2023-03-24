//
//  DiscountView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct DiscountView: View {
    
    let discount: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
                .cornerRadius(9)
                
            Text("\(discount)% off")
                .lineLimit(1)
                .font(.custom("Montserrat-Bold", size: 9))
                .foregroundColor(.white)
        }
        .frame(width: 49, height: 18)
    }
}

struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView(discount: 30)
    }
}
