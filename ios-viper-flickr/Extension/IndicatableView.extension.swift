//
//  IndicatableView.extension.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 30/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit
import PKHUD

extension IndicatableView where Self : UIViewController {
    
    func showIndicatorView() {
        HUD.show(.labeledProgress(title: "Loading...", subtitle: nil), onView: self.view)
    }
    
    func hideIndicatorView() {
        HUD.hide(animated: true)
    }
}
