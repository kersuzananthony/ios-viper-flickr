//
//  PhotosViewController.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, PhotosView {
    
    // MARK: - Variables
    var presenter: PhotosPresentation!
    var photos: [Photo] = [] {
        didSet { photosTableView.reloadData() }
    }

    // MARK: - IBOutlets
    @IBOutlet weak var photosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        presenter.viewDidLoad()
    }
    
    private func setupView() {
        navigationItem.title = "Photos"
        photosTableView.delegate = self
        photosTableView.dataSource = self
        photosTableView.rowHeight = UITableViewAutomaticDimension
        photosTableView.estimatedRowHeight = 300
        photosTableView.register(PhotoTableViewCell.self)
    }
    
    // MARK: - PhotosView methods
    func showNoContentScreen() {
        self.photos = []
    }
    
    func showPhotos(_ photos: [Photo]) {
        self.photos = photos
    }
}

// MARK: - UITableViewDataSource methods
extension PhotosViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as PhotoTableViewCell
        
        cell.selectionStyle = .none
        cell.updateView(model: photos[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}

// MARK: - UITableViewDelegate
extension PhotosViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        presenter.didSelectPhoto(photos[indexPath.row])
    }
}
