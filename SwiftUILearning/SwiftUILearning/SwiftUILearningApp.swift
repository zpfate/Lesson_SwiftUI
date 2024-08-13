//
//  SwiftUILearningApp.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

@main
struct SwiftUILearningApp: App {
    
    @State private var isShowingPurple = false

    var body: some Scene {
        
        WindowGroup {
            
            NavigationView {
                
                List {
                    NavigationLink("@State") {
                        StateView()
                    }
                    NavigationLink("@Binding") {
                        BindingView()
                    }
                    NavigationLink("@Environment") {
                        EnvironmentView()
                    }
                    
                    NavigationLink("@ObservedObject") {
                        ObservedObjectView()
                    }
                    NavigationLink("@StateObject") {
                        StateObjectView()
                    }
                    NavigationLink("@EnvironmentObject") {
                        EnvironmentObjectView()
                    }
                    
                }
            }
            
            
//            NavigationSplitView {
//                
//                Text("SSSSS")
//                
//            } detail: {
//                Text("DDDDD")
//            }

            
        }
    }
}
