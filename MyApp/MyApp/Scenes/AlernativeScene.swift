//
//  AlernativeScene.swift
//  MyApp
//
//  Created by fate on 2024/8/1.
//

import SwiftUI

struct AlernativeScene: Scene {
    var body: some Scene {
        
        WindowGroup {
            AlertnativeContentView()
        }
        
        #if os(macOS)
        Settings{
            SettingsView()
        }
        #endif
    }
}


