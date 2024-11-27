//
//  DetailView.swift
//  ListDetailChallenge
//
//  Created by Bruno Cardenas on 26/11/24.
//
import SwiftUI

struct DetailView: View {
    let item: String
    @EnvironmentObject var coordinator: NavigationCoordinator

    private var randomColor: Color {
        return Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
    
    var body: some View {
        ZStack {
            randomColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(item)
                    .font(.system(size: 60, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 80)
                    .padding(.horizontal)
                
                Spacer()
                Button("Back to List") {
                    coordinator.popToList()
                }
                .padding()
                .background(Capsule().fill(Color.white.opacity(0.5)))
                .foregroundColor(.black)
                .font(.title2)
                .padding(.bottom, 50)
            }
        }
    }
}
