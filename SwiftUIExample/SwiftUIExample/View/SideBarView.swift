//
//  SideBarView.swift
//  SwiftUIExample
//
//  Created by fate on 2024/8/28.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        
        List {
            
            Section("基础控件") {
                NavigationLink(destination: TextPage()) {
                    SideBarItem(title: "Text",subtitle: "显示一行或多行只读文本")
                }
                
                NavigationLink(destination: TextFieldPage()) {
                    SideBarItem(title: "TextField",subtitle: "文本输入框")
                }
                
                NavigationLink(destination: ImagePage()) {
                    SideBarItem(title: "Image",subtitle: "展示图片")
                }
            }
            
            
        }
        
    }
}

#Preview {
    SideBarView()
}
