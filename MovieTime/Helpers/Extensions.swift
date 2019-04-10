//
//  Extensions.swift
//  YoutubeDemo
//
//  Created by Mustafa Alsoffi on 04/04/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    func addConstraintsWithFormat(format: String, view: UIView...) {
        var viewsDictionary = [String : UIView]()
        
        for (index, view) in view.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            
            viewsDictionary[key] = view
            
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
        
        
    }
}

