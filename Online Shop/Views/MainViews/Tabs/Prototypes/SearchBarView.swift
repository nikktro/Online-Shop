//
//  SearchBarView.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 23.03.2023.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchQueryText: String
    let action: () -> Void
        
    var body: some View {
        VStack {
            ZStack() {
                if searchQueryText.isEmpty {
                    Text("What are you looking for ?")
                        .foregroundColor(Color.textFieldSearchColor)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                TextField("", text: $searchQueryText)
                
                HStack() {
                    Spacer()
                    Button(action: action) {
                        Image("ic-Search")
                            .padding(.trailing, 16)
                    }
                }
            }
            .font(.custom("Montserrat-Medium", size: 8))
            .foregroundColor(Color.titleBlackTextColor)
            .multilineTextAlignment(.center)
            .frame(height: 24)
            .background(Color.textFieldFillLightGrayColor)
            .cornerRadius(12)
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchQueryText: .constant("")) {}
    }
}
