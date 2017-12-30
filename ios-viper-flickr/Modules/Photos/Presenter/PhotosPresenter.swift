//
//  PhotosPresenter.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation

class PhotosPresenter: PhotosPresentation {
    
    // MARK: - Variables
    weak var view: PhotosView?
    var interactor: PhotosUseCase!
    var router: PhotosWireFrame!
    var photos: [Photo] = [] {
        didSet {
            if photos.count > 0 {
                view?.showPhotos(photos)
            } else {
                view?.showNoContentScreen()
            }
        }
    }

    // MARK: - PhotosPresentation methods
    func viewDidLoad() {
        interactor.fetchPhotos()
    }
    
    func didSelectPhoto(_ photo: Photo) {
        router.presentDetail(for: photo)
    }
}

// MARK: - PhotosInteractorOutput methods
extension PhotosPresenter: PhotosInteractorOutput {
    func photosFetchFailed() {
        self.view?.showNoContentScreen()
    }
    
    func photosFetched(_ photos: [Photo]) {
        self.photos = photos
    }
}
