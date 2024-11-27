//
//  MainCoordinator.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//
import Foundation

class NavigationCoordinator: ObservableObject {
    @Published var currentView: ViewType? = nil

    enum ViewType {
        case listView
        case detailView(String)
    }

    func navigateToList() {
        currentView = .listView
    }

    func navigateToDetail(withItem item: String) {
        currentView = .detailView(item)
    }

    func popToList() {
        currentView = .listView
    }
}
