//
//  RootRouter.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

class RootRooter: RootWireFrame {
    
    func presentPhotosScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = PhotosRouter.assembleModule()
    }
}
