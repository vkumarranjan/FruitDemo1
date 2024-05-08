//
//  FruitNutirants.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct FruitNutirants: View {
    // MARK: Property
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins"]
    // MARK: Body
    
    var body: some View {
        GroupBox() {
          
            DisclosureGroup("Nutiranal value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        } //: BOX
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutirants(fruit: fruitsData[0])
        .padding()
}
