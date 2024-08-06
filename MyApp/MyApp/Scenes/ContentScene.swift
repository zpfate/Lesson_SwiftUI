//
//  ContentScene.swift
//  MyApp
//
//  Created by fate on 2024/8/1.
//

import SwiftUI

struct ContentScene: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem { Label("Journal", systemImage: "book")
                    }
                
                SettingsView()
                    .tabItem { Label("Settings", systemImage: "gear")
                    }       
            }
        }
    }
}
