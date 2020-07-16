//
//  Data.swift
//  EquatableDemo
//
//  Created by Twisted Fate on 2019/12/30.
//  Copyright © 2019 Twisted Fate. All rights reserved.
//
import UIKit
import SwiftUI
import CoreLocation

let landmarkData: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch  {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        let t = try decoder.decode(T.self, from: data)
        return t
    } catch  {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    
    typealias _ImageDictionary = [String: CGImage]
    fileprivate var images: _ImageDictionary = [:]
    fileprivate static var scale = 2
    static let shared = ImageStore()
    
    static func loadImage(name: String) -> CGImage {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            // 获取并创建CGImageSource对象
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            //从图片信息里获取一张图片（第0张）
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
        else {
            fatalError("Couldn't load image \(name).jpg from main bundle.")
        }
        return image
    }
    
    fileprivate func _guaranteeImage(name: String) -> _ImageDictionary.Index {
        if let index = images.index(forKey: name) {
            return index
        }
        images[name] = ImageStore.loadImage(name: name)
        return images.index(forKey: name)!
    }
    
    func image(name: String) -> Image {
        let index = _guaranteeImage(name: name)
        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(verbatim: name))
    }
    
}
