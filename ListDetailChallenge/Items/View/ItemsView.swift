//
//  ItemsView.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//
import SwiftUI

struct ItemsView: View {
    @StateObject private var coordinator = NavigationCoordinator()
    @StateObject private var viewModel: ItemsViewModel

    init(viewModel: ItemsViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            switch coordinator.currentView {
            case .listView:
                VStack {
                    Text("Welcome to the App!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    ListView(items: viewModel.firstHalfItems, title: "First Half")
                    ListView(items: viewModel.secondHalfItems, title: "Second Half")
                }
                .padding()
                
            case .detailView(let item):
                DetailView(item: item)
                    .environmentObject(coordinator)
                
            case .none:
                Text("Loading...")
            }
        }
        .environmentObject(coordinator)
        .onAppear {
            coordinator.navigateToList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let repository = InMemoryItemsRepository()
        let useCase = DefaultItemsUseCase(repository: repository)
        let viewModel = ItemsViewModel(useCase: useCase)
        
        ItemsView(viewModel: viewModel)
            .environmentObject(NavigationCoordinator())
    }
}
