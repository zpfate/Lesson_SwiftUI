//
//  LandMark.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coodinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var locationCoordiante: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coodinates.latitude, longitude: coodinates.longtitude)
    }
    enum Category: String, CaseIterable, Codable {
        case featured =  "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longtitude: Double
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
