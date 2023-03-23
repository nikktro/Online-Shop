//
//  HomeTabViewModel.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 22.03.2023.
//

import Foundation

protocol HomeTabViewModelProtocol {
    var searchQueryText: String { get }
}

final class HomeTabViewModel: HomeTabViewModelProtocol, ObservableObject {
        
    @Published var searchQueryText: String = ""
    
    let categories = ["Phones", "Headphones", "Games", "Cars", "Furniture", "Kids"]

    
}
