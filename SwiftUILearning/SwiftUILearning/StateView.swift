//
//  StateView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

struct StateView: View {
    
    // @State 用于在视图中声明可变状态的属性 并自动更新视图
    // 当使用 @State 标记属性时，在 SwiftUI 内部会被自动转换为一对 setter 和 getter，对这个属性进行赋值的操作将会触发 View 的刷新，它的 body 会被再次调用，底层渲染引擎会找出界面上被改变的部分，根据新的属性值计算出新的 View，并进行刷新。
    @State private var count = 0
    
    var body: some View {
        
        Button(action: {
            count += 1
        }, label: {
            Text("Button count: \(count)")
        })
    }
}

#Preview {
    StateView()
}
