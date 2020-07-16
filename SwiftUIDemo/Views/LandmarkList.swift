//
//  LandmarkList.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/31.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            List(landmarkData, id: \.id) { (landmark) in
                
                LandmarkRow(landmark: landmark)
            }.navigationBarTitle(Text("Landmarks"))
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
