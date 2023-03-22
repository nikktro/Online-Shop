//
//  APIServiceProtocol.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 20.03.2023.
//

import Foundation

protocol APIServiceProtocol {
    
    func fetchLatest() async throws -> [Latest]
    
    func fetchFlashSale() async throws -> [FlashSale]
    
}


