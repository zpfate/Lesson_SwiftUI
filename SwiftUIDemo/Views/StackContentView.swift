//
//  StackContent.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI

struct StackContentView: View {
    
    var body: some View {
        // VStack垂直方向的组合视图
        VStack(alignment: HorizontalAlignment.leading) {
            Text("Turtle Rock").font(Font.title)
            // HSTack水平方向的组合视图
            HStack{
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer() // 撑开父视图
                Text("California").font(.subheadline)
            }
        }.padding()
        // padding四周的边界
    }
}

struct StackContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView()
    }
}
