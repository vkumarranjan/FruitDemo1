//
//  FruitCardView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 06/05/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: Properties
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)

                // Fruit: HeadLine
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                
                // Button : Card
                
                StartButtonView()
            }//: VSTACK
        }//: ZStack
        
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[2])
        .previewLayout(.fixed(width: 320, height: 640))
}
