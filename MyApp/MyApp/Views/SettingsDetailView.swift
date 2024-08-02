//
//  SettingsDetailView.swift
//  MyApp
//
//  Created by fate on 2024/8/2.
//

import SwiftUI

struct SettingsDetailView: View {
    
    let title: String
    @AppStorage("option1") private var option1 = true
    @AppStorage("option2") private var option2 = true
    
    
    var body: some View {
        Form {
            Section {
                Toggle("Enable option 1", isOn: $option1).toggleStyle(.automatic)
                Toggle("Enable option 2", isOn: $option2).toggleStyle(.automatic)

            }

        }
        .navigationTitle(title)
    }
}
