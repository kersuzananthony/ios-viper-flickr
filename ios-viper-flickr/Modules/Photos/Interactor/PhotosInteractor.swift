//
//  PhotosInteractor.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation
import RxSwift

class PhotosInteractor: PhotosUseCase {
    
    // MARK: - Variables
    weak var output: PhotosInteractorOutput?
    private var disposeBag = DisposeBag()
    
    // MARK: - PhotosUseCase methods
    func fetchPhotos() {
        PhotosAPI.fetchPhotos()
            .subscribe(
                onNext: { photos in
                    self.output?.photosFetched(photos)
                }, onError: { error in
                    print(error.localizedDescription)
                    self.output?.photosFetchFailed()
                }
            ).disposed(by: disposeBag)
    }
}
