//
//  PhotoTableViewCell.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell, ModelTransfer {

    // MARK: - IBOutlets
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoTitleLabel: UILabel!
    @IBOutlet weak var photoAuthorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updateView(model: Photo) {
        if let imageUrl = model.media?.imageUrl {
            try? photoImageView.setCacheImage(urlString: imageUrl)
        }
        
        photoTitleLabel.text = model.title
        photoAuthorLabel.text = model.author
    }
}
