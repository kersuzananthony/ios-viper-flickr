//
//  PhotoDetailContract.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 30/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

protocol PhotoDetailView: class {
    var presenter: PhotoDetailPresentation! { get set }
    
    func showPhotoDetail(for photo: Photo)
}

protocol PhotoDetailPresentation: class {
    weak var view: PhotoDetailView? { get set }
    var photo: Photo? { get set }
    
    func viewDidLoad()
}

protocol PhotoDetailWireFrame: class {
    static func assembleModule(for photo: Photo) -> UIViewController
}
