//
//  APIClient.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 20.03.2023.
//

import Foundation

final class APIClient: APIServiceProtocol {
    
    static let shared = APIClient()
    private init() {}
    
    let latestURL = "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7"
    let flashSaleURL = "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac"
    
    func fetchLatest() async throws -> [Latest] {
    
        guard let url = URL(string: latestURL) else { return [] }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        return try JSONDecoder().decode(Products.self, from: data).latest
        
    }
    
    func fetchFlashSale() async throws -> [FlashSale] {
        
        guard let url = URL(string: flashSaleURL) else { return [] }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        return try JSONDecoder().decode(GoodsStore.self, from: data).flashSale
        
    }
    
//    func fetchURL(url: String) ->  {
//        
//    }
        
}
