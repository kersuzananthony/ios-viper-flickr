//
//  PhotoDetailRouter.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 30/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

class PhotoDetailRouter: PhotoDetailWireFrame {

    static func assembleModule(for photo: Photo) -> UIViewController {
        guard let view = R.storyboard.photoDetail.photoDetailViewController() else {
            fatalError("Cannot instanciate photoDetailViewController")
        }
        
        let presenter = PhotoDetailPresenter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.photo = photo
        
        return view
    }
}
