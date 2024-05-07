//
//  ContentView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(
                        destination: FruitDetails(fruit: fruit)) {
                            FruitRowView(fruit: fruit)
                                .padding(.vertical, 4)
                        }
                    
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
