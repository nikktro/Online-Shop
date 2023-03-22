//
//  Products.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 20.03.2023.
//

import Foundation

struct Products: Codable {
    let latest: [Latest]
}

struct Latest: Codable {
    let category, name: String
    let price: Int
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case category, name, price
        case imageURL = "image_url"
    }
}
