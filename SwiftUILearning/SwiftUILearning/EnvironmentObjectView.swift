//
//  EnvironmentObjectView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

final class Person: ObservableObject {
    @Published var name = "Alex Taylor"
    
    
    
}

struct EnvironmentObjectView: View {
    
    var body: some View {
        
        VStack {
            let p = Person()
            MapView().environmentObject(p)
        }
    }
}

struct MapView: View {
    @EnvironmentObject var p: Person
    
    var body: some View {
        VStack {
            Text(p.name)
            Button("点我") {
                p.name = "12345"
            }
        }
    }
}


/**
 @EnvironmentObject用于在整个应用程序中共享全局环境对象。它允许在应用程序中的任何地方访问和使用该对象，而无需手动传递数据。在 SwiftUI 中，View 提供了 environmentObject(自定义的Object) 方法，来把某个 ObservableObject 的值注入到当前 View 层级及其子层级中去。在这个 View 的子层级中，可以使用 @EnvironmentObject 来直接获取这个绑定的环境值。@EnvironmentObject 修饰器是针对全局环境的。通过它，我们可以避免在初始 View 时创建 ObservableObject, 而是从环境中获取 ObservableObject
 */
