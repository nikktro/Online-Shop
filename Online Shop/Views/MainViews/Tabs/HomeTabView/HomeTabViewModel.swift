//
//  HomeTabViewModel.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 22.03.2023.
//

import SwiftUI

protocol HomeTabViewModelProtocol {
    func searchButtonTapped() async
    func fetchRequest() async
}

@MainActor
final class HomeTabViewModel: HomeTabViewModelProtocol, ObservableObject {
        
    @Published var searchQueryText: String = ""
    @Published var latests: [Latest] = []
    @Published var flashSales: [FlashSale] = []
    @Published var isFetchingDone: Bool = false
    
    let categories = ["Phones", "Headphones", "Games", "Cars", "Furniture", "Kids"]
    
    func searchButtonTapped() {
        print("\(#function): Search button tapped")
    }

    func fetchRequest() async {
            self.latests = try! await APIClient.shared.fetchLatest()
            self.flashSales = try! await APIClient.shared.fetchFlashSale()
            isFetchingDone = true
    }
    
}
