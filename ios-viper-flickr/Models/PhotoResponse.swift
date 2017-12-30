//
//  PhotoResponse.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation
import ObjectMapper

struct PhotoResponse {
    var photos: [Photo]?
}

// MARK: - Mappable methods
extension PhotoResponse: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.photos <- map["items"]
    }
}
