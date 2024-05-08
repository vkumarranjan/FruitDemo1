//
//  SettingsRowView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        HStack {
            Text(name).foregroundColor(.gray)
            Spacer()
            Text(content ?? "")
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsRowView(name: "Developer", content: "Vinay")
        .padding()
}
