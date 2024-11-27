//
//  ListDetailChallengeApp.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//

import SwiftUI

@main
struct ListDetailChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            let repository = InMemoryItemsRepository()
            let useCase = DefaultItemsUseCase(repository: repository)
            let viewModel = ItemsViewModel(useCase: useCase)
            ItemsView(viewModel: viewModel)
        }
    }
}
