//
//  CircleImageView.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI

struct CircleImageView: View {
    
    var circleBoundView: some View {
        // 4cm圆形边界
        Circle().stroke(Color.white, lineWidth: 4)
    }
    var body: some View {
        // clipShape裁剪形状 shadow:阴影
        Image("turtlerock").clipShape(Circle()).overlay(circleBoundView).shadow(radius: 10.0)
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
