//
//  ItemsViewModel.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//

import Foundation

class ItemsViewModel: ObservableObject {
    @Published var items: [String] = []
    
    private let useCase: ItemsUseCase
    
    init(useCase: ItemsUseCase) {
        self.useCase = useCase
        self.fetchItems()
    }
    
    func fetchItems() {
        self.items = useCase.getItems()
    }
    
    var firstHalfItems: [String] {
        Array(items.prefix(items.count / 2))
    }
    
    var secondHalfItems: [String] {
        Array(items.suffix(from: items.count / 2))
    }
}
