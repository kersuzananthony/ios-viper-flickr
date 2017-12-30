//
//  ReusableView.extension.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

extension ReusableView where Self : UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
