//
//  StackContent.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI

struct StackContentView: View {
    var landmark: Landmark

    var body: some View {
        // VStack垂直方向的组合视图
        VStack(alignment: HorizontalAlignment.leading) {
            Text(landmark.name).font(Font.title)
            // HSTack水平方向的组合视图
            HStack{
                Text(landmark.park).font(.subheadline)
                Spacer() // 撑开父视图
                Text(landmark.state).font(.subheadline)
            }
        }.padding()
        // padding四周的边界
    }
}

struct StackContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView(landmark: landmarkData[0])
    }
}
