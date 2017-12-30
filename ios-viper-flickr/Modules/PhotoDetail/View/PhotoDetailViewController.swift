//
//  PhotoDetailViewController.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 30/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController, PhotoDetailView {

    // MARK: - Variables
    var presenter: PhotoDetailPresentation!
    
    // MARK: - IBOutlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoAuthorLabel: UILabel!
    @IBOutlet weak var photoTagsLabel: UILabel!
    @IBOutlet weak var photoTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        presenter.viewDidLoad()
    }
    
    private func setupView() {
        navigationItem.title = "Detail"
    }
    
    // MARK: - PhotoDetailView methods
    func showPhotoDetail(for photo: Photo) {
        if let imageUrl = photo.media?.imageUrl {
            try? photoImageView.setCacheImage(urlString: imageUrl)
        }
        
        photoAuthorLabel.text = photo.author
        photoTitleLabel.text = photo.title
        photoTagsLabel.text = photo.tags
    }
}
