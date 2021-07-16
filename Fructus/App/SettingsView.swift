//
//  SettingsView.swift
//  Fructus
//
//  Created by marco rodriguez on 15/07/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle.fill")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    //MARK: - Section 2
                    
                    //MARK: - Section 3
                    GroupBox(label: SettingsLabelView(labelText: "Aplication", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Marco Alonso")
                        SettingsRowView(name: "Designer", content: "Alonso Tapia")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "Udemy.com")
                        SettingsRowView(name: "GitHub", linkLabel: "@marcoalonso", linkDestination: "Github.com/marcoalonso")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.3.5")
                    }
                    
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                    }
                )
                .padding()
            }//: Scroll
        }//: Navigation
        
    }
}

// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 11 Pro")
    }
}
