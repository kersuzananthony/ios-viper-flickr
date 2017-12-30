//
//  Photo.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation
import ObjectMapper

struct Photo {
    var title: String?
    var authorId: String?
    var author: String?
    var link: String?
    var tags: String?
    var media: PhotoMedia?
}

// MARK: - Mappable methods
extension Photo: Mappable {
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        title       <- map["title"]
        author      <- map["author"]
        authorId    <- map["author_id"]
        tags        <- map["tags"]
        link        <- map["link"]
        media       <- map["media"]
    }
}
