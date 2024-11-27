//
//  ItemsRepository.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//
import Foundation

protocol ItemsRepository {
    func fetchItems() -> [String]
}

class InMemoryItemsRepository: ItemsRepository {
    func fetchItems() -> [String] {
        return ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7"]
    }
}
