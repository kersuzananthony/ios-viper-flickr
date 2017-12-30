//
//  PhotoDetailPresenter.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 30/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation

class PhotoDetailPresenter: PhotoDetailPresentation {
    
    // MARK: - Variables
    weak var view: PhotoDetailView?
    var photo: Photo?
    
    // MARK: - PhotoDetailPresentation methods
    func viewDidLoad() {
        guard let photo = self.photo else { return }
        
        view?.showPhotoDetail(for: photo)
    }
}
