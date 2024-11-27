//
//  ListView.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//
import SwiftUI

struct ListView: View {
    let items: [String]
    let title: String
    @EnvironmentObject var coordinator: NavigationCoordinator
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .padding(.bottom, 5)
            
            List(items, id: \.self) { item in
                Button(action: {
                    coordinator.navigateToDetail(withItem: item) 
                }) {
                    Text(item)
                        .padding(.vertical, 8)
                        .background(RoundedRectangle(cornerRadius: 8).stroke())
                }
            }
            .listStyle(PlainListStyle())
            .scrollIndicators(.never)
            .listRowSeparator(.hidden)
            .background(Color.clear)
            .padding(0)
        }
    }
}
