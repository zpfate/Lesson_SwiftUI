//
//  TexTPage.swift
//  SwiftUIExample
//
//  Created by fate on 2024/8/28.
//

import SwiftUI

fileprivate let githubUrl = "https://github.com/zpfate"

struct TextPage: View {
    
    var body: some View {
        
        VStack (spacing: 10, content: {
            
            Text("SwiftUI")
            
            Text("SwiftUI")
                .foregroundStyle(.orange) // 设置Color
                .bold() // 粗体字
                .font(.system(.largeTitle))
                .italic() // 
                .shadow(color: .black, radius: 1, x: 0, y: 2) // 设置字体阴影
            
            Text(githubUrl)
                .underline(true, color: Color.green)
                .font(.system(size: 16, design: .serif))
                .onTapGesture {
                    print(githubUrl)
                }
            
            HStack(content: {
                Text("Text")
                Text("Bold Text").bold()
                Text("Orange Text").foregroundStyle(.orange)
            })
            
            Text("可见，setState()过程主要工作是记录所有的脏元素，添加到BuildOwner对象的_dirtyElements成员变量，然后调用scheduleFrame来注册Vsync回调。 当下一次vsync信号的到来时会执行handleBeginFrame()和handleDrawFrame()来更新UI。").lineLimit(nil)
        }).navigationTitle("Text")
        
        
    }
}

#Preview {
    TextPage()
}
