//
//  BindingView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

struct BindingView: View {
    
    @State private var isChildViewVisible = false
    
    var body: some View {
        
        VStack (alignment: .center) {
            Toggle(isOn: $isChildViewVisible) {
                Text("Show Child View").padding()
            }.padding()
            if isChildViewVisible {
                BindingChildView(isVisible: $isChildViewVisible)
            }
        }
    }
}


struct BindingChildView: View {
    
    @Binding var isVisible: Bool
    
    var body: some View {
        Text("Child View")
        Button {
            isVisible = false
        } label: {
            Text("Hide")
        }
    }
}

