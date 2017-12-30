//
//  UIImageView+ImageCaching.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit
import Kingfisher

enum UIImageViewError: Error {
    case resourceIsNotAnImage
}

extension UIImageView {
    func setCacheImage(urlString: String) throws {
        guard let url = URL(string: urlString) else {
            throw UIImageViewError.resourceIsNotAnImage
        }
        
        self.kf.indicatorType = .activity
        self.kf.setImage(with: url, options: [.transition(.fade(0.2))])
    }
}
