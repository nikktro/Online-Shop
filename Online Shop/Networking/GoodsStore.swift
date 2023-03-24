//
//  GoodsStore.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 20.03.2023.
//

import Foundation

struct GoodsStore: Codable {
    let flashSale: [FlashSale]

    enum CodingKeys: String, CodingKey {
        case flashSale = "flash_sale"
    }
}

struct FlashSale: Codable {
    let category, name: String
    let price: Double
    let discount: Int
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case category, name, price, discount
        case imageURL = "image_url"
    }
}

let flashSales = [
    FlashSale(category: "Kids", name: "New Balance Sneakers", price: 22.5, discount: 30, imageURL: "https://newbalance.ru/upload/iblock/697/iz997hht_nb_02_i.jpg"),
    FlashSale(category: "Kids", name: "Reebok Classic", price: 24, discount: 30, imageURL: "https://assets.reebok.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/3613ebaf6ed24a609818ac63000250a3_9366/Classic_Leather_Shoes_-_Toddler_White_FZ2093_01_standard.jpg")
]
