//
//  SettingLableVoew.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct SettingLableView: View {
    var lableText: String
    var lableImage: String
    var body: some View {
        HStack {
            Text(lableText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingLableView(lableText: "Fructus", lableImage: "info.circle")
        .padding()
}
