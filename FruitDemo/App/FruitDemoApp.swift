//
//  FruitDemoApp.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 30/04/24.
//

import SwiftUI

@main

struct FruitDemoApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()

            }
        }
    }
}
