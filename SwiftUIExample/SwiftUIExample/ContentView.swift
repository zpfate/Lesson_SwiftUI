//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by fate on 2024/8/28.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationSplitView {
            
            SideBarView()
            
        } detail: {
            
            DemoPage()
        }

    }
}

#Preview {
    ContentView()
}
