//
//  WeclomeVC.swift
//  YoutubeDemo
//
//  Created by Mustafa Alsoffi on 02/04/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

 class WeclomeController: UIViewController {
  let views = WelcomeView()
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view = views
        views.loginButton.addTarget(self, action: #selector(loginPressed), for: UIControl.Event.touchUpInside)
  
    }
   @objc func loginPressed () {
    let layout = UICollectionViewFlowLayout()
    let nexViewController = HomeController(collectionViewLayout: layout)
    navigationController?.pushViewController(nexViewController, animated: true)
    }
    

}
