//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            //edgesIgnoringSafeArea(.top)使整个视图从最顶部开始, 否贼会余状态栏高度的空白
            MapView(landmark: landmark).frame(height: 300.0).edgesIgnoringSafeArea(.top)
            // offset 设置偏移量 使Image一半贴在地图上
            // .padding则是为了让下面的文字顶上来
            CircleImageView(landmark: landmark).offset(y: -130).padding(.bottom, -130)
            StackContentView(landmark: landmark)
            // Spacer()充满下方,将上面的视图顶到头部
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark:landmarkData[0])
    }
}
