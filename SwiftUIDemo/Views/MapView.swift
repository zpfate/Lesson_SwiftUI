//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI
import MapKit

/**
 UIViewRepresentable: 在SwiftUI中使用UIView子类, 需要这些视图包装在遵循UIViewRepresentable协议的SwiftUI视图中
 UIViewRepresentable需要实现两个协议方法:
 
 */
struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    
    // 返回UIView 代替body属性
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView.init(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
