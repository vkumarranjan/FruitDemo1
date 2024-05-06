//
//  StartButtonView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 06/05/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARL: properties
    
    var body: some View {
    
        Button(action: {
            print("tee")
        })   {
            HStack (spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
