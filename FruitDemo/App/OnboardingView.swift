//
//  OnboardingView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 06/05/24.
//

import SwiftUI

struct OnboardingView: View {
    
    
    var body: some View {
       // MARK:
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()

            } //: Loop
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
