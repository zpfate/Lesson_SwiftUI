//
//  LandMark.swift
//  SwiftUIDemo
//
//  Created by Twisted Fate on 2019/12/17.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    var locationCoordiante: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured =  "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

/**
 * Hashable: 作为字典的key,需要遵循Hashable协议
 */

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
