//
//  ViewProtocols.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation

protocol ReusableView: class {}

protocol NibLoadableView: class { }

protocol IndicatableView: class {
    func showIndicatorView()
    func hideIndicatorView()
}
