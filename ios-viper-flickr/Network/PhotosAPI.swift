//
//  PhotosAPI.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class PhotosAPI {
    
    enum PhotosAPIError: Error {
        case noResult
    }
    
    static let baseUrl = "https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1"
    
    static func fetchPhotos() -> Observable<[Photo]> {
        return Observable<[Photo]>.create { observer -> Disposable in
            let request = Alamofire.request(baseUrl, method: .get)
                .validate()
                .responseObject(completionHandler: { (response: DataResponse<PhotoResponse>) in
                    switch response.result {
                    case .success(let response):
                        if let photos = response.photos {
                            observer.onNext(photos)
                            observer.onCompleted()
                        } else {
                            observer.onError(PhotosAPIError.noResult)
                        }
                    case .failure(let error):
                        observer.onError(error)
                    }
                })
            
            return Disposables.create {
                request.cancel()
            }
        }
    }
}

