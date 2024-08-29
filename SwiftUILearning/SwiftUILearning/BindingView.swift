//
//  BindingView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

struct BindingView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        
        VStack (alignment: .center) {
            Toggle(isOn: $isVisible) {
                Text("Show child view")
            }.padding()
                        
            if isVisible {
                BindingChildView(isVisible: $isVisible)
            } else {
                Rectangle().frame(height: 60).foregroundColor(Color.clear)
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
            Image(systemName: "eye.slash").resizable().frame(width: 40, height: 30)
        }
    }
}

