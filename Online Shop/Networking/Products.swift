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
    let price: Double
    let imageURL: String

    enum CodingKeys: String, CodingKey {
        case category, name, price
        case imageURL = "image_url"
    }
}

var latests = [
    Latest(category: "Phones", name: "Samsung S10", price: 1000, imageURL: "https://www.dhresource.com/0x0/f2/albu/g8/M01/9D/19/rBVaV1079WeAEW-AAARn9m_Dmh0487.jpg"),
    Latest(category: "Games", name: "Sony Playstation 5", price: 700, imageURL: "https://avatars.mds.yandex.net/get-mpic/6251774/img_id4273297770790914968.jpeg/orig"),
    Latest(category: "Games", name: "Xbox ONE", price: 500, imageURL: "https://www.tradeinn.com/f/13754/137546834/microsoft-xbox-xbox-one-s-1tb-console-additional-controller.jpg"),
    Latest(category: "Cars", name: "BMW X6M", price: 35000, imageURL: "https://mirbmw.ru/wp-content/uploads/2022/01/manhart-mhx6-700-01.jpg")
]
