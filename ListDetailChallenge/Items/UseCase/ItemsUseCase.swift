//
//  ItemsUseCase.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//
protocol ItemsUseCase {
    func getItems() -> [String]
}

class DefaultItemsUseCase: ItemsUseCase {
    private let repository: ItemsRepository

    init(repository: ItemsRepository) {
        self.repository = repository
    }

    func getItems() -> [String] {
        return repository.fetchItems()
    }
}
