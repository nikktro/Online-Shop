//
//  TabBar.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 23.03.2023.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var selectedIndex: Int
    let tabBarImages: [String]
    
    var body: some View {
        VStack() {
            Spacer()
            ZStack {
                Rectangle()
                    .frame(height: 103)
                    .cornerRadius(30)
                    .foregroundColor(.white)
                    .padding(.bottom, -50)
                
                HStack {
                    ForEach(0..<tabBarImages.count, id: \.self) { num in
                        Button {
                            selectedIndex = num
                        } label: {
                            Spacer()
                            ZStack {
                                Circle()
                                    .frame(height: 40)
                                    .foregroundColor(Color("IconFillColor"))
                                    .opacity(selectedIndex == num ? 1 : 0.0)
                                Image(tabBarImages[num])
                            }
                            Spacer()
                        }
                    }
                }
                .padding(.trailing, 4)
                .padding(.leading, 4)
                .padding(.top, 10)
                
            }
        }
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedIndex: .constant(0), tabBarImages: ["Chat", "Cart"])
    }
}
