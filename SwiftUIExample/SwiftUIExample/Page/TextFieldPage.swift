//
//  TextFieldPage.swift
//  SwiftUIExample
//
//  Created by fate on 2024/8/28.
//

import SwiftUI

struct TextFieldPage: View {
    
    @State private var name: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 15, content: {
            
            HStack(content: {
                Text("昵称:")
                    .foregroundStyle(.secondary)
                // 普通文本输入框
                TextField("请输入昵称", text: $name)
            }).frame(height: 50).textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            HStack(content: {
                Text("密码:")
                    .foregroundStyle(.secondary)
                // 密文文本输入框
                SecureField("请输入密码", text: $password)
            }).frame(height: 50).textFieldStyle(.roundedBorder)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            
            Text("昵称输入结果:" + name).padding(20).frame(height: 30)
            Text("密码输入结果:" + password).padding(20).frame(height: 30)
        }).navigationTitle("TextField")
        
        
      
    }
}

#Preview {
    TextFieldPage()
}
