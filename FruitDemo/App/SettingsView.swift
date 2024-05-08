//
//  SettingsView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false

    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: Section 1
                    GroupBox(
                        label:
                            SettingLableView(lableText: "Fructuse", lableImage: "info.circle")
                    )
                    
                    {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturlay low din fat, sodium AND CAAORES. NONE have cholestrol. fruits")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: Section 2
                    
                    GroupBox(
                    label: SettingLableView(lableText: "Customisation", lableImage: "paintbrush")

                    ) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can start the Applicaton by toggle the switch.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            //.font(.footnote)
                            //.multilineTextAlignment(.leading  )
                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: Section 3
                    
                    GroupBox(
                    label: SettingLableView(lableText: "Application", lableImage: "apps.iphone")

                    ) {
                        SettingsRowView(name: "Developer", content: "Vinay")
                        SettingsRowView(name: "Designer", content: "Ranjan")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                    }
                    
                } // Vstack
                
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                
                .padding()
            }// Scroll
            
        }//: Navigation
       
    }
}

#Preview {
    SettingsView()
}
