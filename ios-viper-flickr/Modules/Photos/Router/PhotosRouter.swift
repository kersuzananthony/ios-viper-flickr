//
//  PhotosRouter.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

class PhotosRouter: PhotosWireFrame {
    
    // MARK: - Variables
    weak var viewController: UIViewController?
    
    // MARK: - PhotosWireFrame methods
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.photos.photosViewController()
        let presenter = PhotosPresenter()
        let interactor = PhotosInteractor()
        let router = PhotosRouter()
        
        let navigation = UINavigationController(rootViewController: view!)
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navigation
    }
    
    func presentDetail(for photo: Photo) {
        let destination = PhotoDetailRouter.assembleModule(for: photo)
        viewController?.navigationController?.pushViewController(destination, animated: true)
    }
}
