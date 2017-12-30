//
//  PhotosContract.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

protocol PhotosView: IndicatableView {
    var presenter: PhotosPresentation! { get set }
    
    func showNoContentScreen()
    func showPhotos(_ photos: [Photo])
}

protocol PhotosPresentation: class {
    weak var view: PhotosView? { get set }
    var interactor: PhotosUseCase! { get set }
    var router: PhotosWireFrame! { get set }
    
    func viewDidLoad()
    func didSelectPhoto(_ photo: Photo)
}

protocol PhotosUseCase: class {
    weak var output: PhotosInteractorOutput? { get set }
    
    func fetchPhotos()
}

protocol PhotosInteractorOutput: class {
    func photosFetched(_ photos: [Photo])
    func photosFetchFailed()
}

protocol PhotosWireFrame: class {
    weak var viewController: UIViewController? { get set }
    
    func presentDetail(for photo: Photo)
    
    static func assembleModule() -> UIViewController
}


