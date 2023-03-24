//
//  TextCapsuleView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 24.03.2023.
//

import SwiftUI

struct CapsuleTextView: View {
    
    let text: String
    let fontSize: CGFloat
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.textFieldFillColor)
                .cornerRadius(fontSize)
                .opacity(0.8)
                
            Text(text)
                .lineLimit(1)
                .font(.custom("Montserrat-SemiBold", size: fontSize))
        }
        .frame(width: (CGFloat(text.count*Int(fontSize))), height: (fontSize * 2))
    }
}

struct TextCapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleTextView(text: "SomeText", fontSize: 6)
    }
}
