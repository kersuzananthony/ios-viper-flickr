//
//  NibLoadableView.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

extension NibLoadableView where Self : UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
