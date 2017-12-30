//
//  UITableView.extension.swift
//  ios-viper-flickr
//
//  Created by Kersuzan on 29/12/2017.
//  Copyright © 2017 com.kersuzan. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) {
        let nib = UINib(nibName: T.nibName, bundle: Bundle.main)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Cannot find cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}
