//
//  SettingsView.swift
//  FruitDemo
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct SettingsView: View {
    
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
                    
                    
                    
                    // MARK: Section 3
                    
                    GroupBox(
                    label: SettingLableView(lableText: "Application", lableImage: "apps.iphone")

                    ) {
                        Divider().padding(.vertical, 4)
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Vinay")
                        }
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
