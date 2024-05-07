//
//  FruitModel.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 07/05/24.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
  }
