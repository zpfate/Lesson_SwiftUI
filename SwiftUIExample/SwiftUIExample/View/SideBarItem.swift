//
//  SideBarItem.swift
//  SwiftUIExample
//
//  Created by fate on 2024/8/28.
//

import SwiftUI

struct SideBarItem: View {
    
    private let title: String
    private let subtitle: String?
    
    init(title: String, subtitle: String? = nil) {
        self.title = title
        self.subtitle = subtitle
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subtitle != nil {
                Text(subtitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
        
    }
}

#Preview {
    SideBarItem(title: "Text", subtitle: "展示文本")
}
