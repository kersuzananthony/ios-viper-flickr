//
//  PhotoMedia.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation
import ObjectMapper

struct PhotoMedia {
    var imageUrl: String?
}

// MARK: - Mappable methods
extension PhotoMedia: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        imageUrl    <- map["m"]
    }
}
