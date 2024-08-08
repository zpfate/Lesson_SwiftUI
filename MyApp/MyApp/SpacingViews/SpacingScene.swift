//
//  SpacingScene.swift
//  MyApp
//
//  Created by fate on 2024/8/7.
//

import SwiftUI

struct SpacingScene: Scene {
    
    var body: some Scene {
        
        WindowGroup {
            VStack (spacing: 70){
                SpacingTrainCars()
                PaddingTrainCars()
                ViewsBetweenTrainCars()
            }
        }
    }
}

