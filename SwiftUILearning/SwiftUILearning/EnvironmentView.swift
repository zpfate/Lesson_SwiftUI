//
//  EnvironmentView.swift
//  SwiftUILearning
//
//  Created by fate on 2024/8/13.
//

import SwiftUI

struct EnvironmentView: View {
    
    /// 声明一个属性来获取特定环境变量的值,无需手动传递
    /// 当环境变量的值发生改变时,相关的视图会自动更新
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        
        if colorScheme == .dark {
            Text("Dark Mode")
                .foregroundColor(.black)
                .background(Color.white)
                .padding()
        } else {
            Text("Light Mode")
                .foregroundColor(.white)
                .background(Color.black)
                .padding()
        }
    }
}

#Preview {
    EnvironmentView().previewLayout(.sizeThatFits)
}
