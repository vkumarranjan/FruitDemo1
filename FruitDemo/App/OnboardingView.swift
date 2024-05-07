//
//  OnboardingView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 06/05/24.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
       // MARK:
        TabView {
            ForEach(fruits[0...5]) { item in
               FruitCardView(fruit: item)

            } //: Loop
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
