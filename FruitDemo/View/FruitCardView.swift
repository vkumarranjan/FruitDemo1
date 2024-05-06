//
//  FruitCardView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 06/05/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: Properties
    
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                // Fruit: Title
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)

                // Fruit: HeadLine
                Text("Blueberry are sweet, nutritons and wildly popular fruit all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button : Card
            }//: VSTACK
        }//: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark"), ], startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

#Preview {
    FruitCardView()
        .previewLayout(.fixed(width: 320, height: 640))
}
