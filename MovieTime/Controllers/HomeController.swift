//
//  ViewController.swift
//  YoutubeDemo
//
//  Created by Mustafa Alsoffi on 12/03/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationViews()
        collectionView.backgroundColor = UIColor(red:0.08, green:0.09, blue:0.09, alpha:1.0);
        collectionView.register(VideoCell.self, forCellWithReuseIdentifier: "cellId")
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       let spacing = (view.frame.width / 10) - 25
        var width = collectionView.frame.size.width > 500 ? (collectionView.frame.size.width / 3) - (2 * spacing) + 20 : (collectionView.frame.size.width / 2) - (2 * spacing)
        if collectionView.frame.width >= 700 && collectionView.frame.height >= 800 {
            width = (collectionView.frame.size.width / 2) - (2 * spacing)
        }
        return CGSize(width: width, height: width * 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
     
        let spacing = (view.frame.width / 10) - 25
       
        
        return UIEdgeInsets.init(top: 0, left: spacing, bottom: 0, right: spacing)
    }

    
    

    
    @objc func searchButtonTapped() {
        print("Search Button Tapped")
    }
    
    @objc func editButtonTapped() {
        print("Edit Button Tapped")
    }
    
    func setNavigationViews() {
        navigationItem.title = "Home"
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        let search = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonTapped)) //
        let button: UIButton = UIButton(type: UIButton.ButtonType.custom)
        button.setImage(UIImage(named: "sittings"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(editButtonTapped), for: UIControl.Event.touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 31)
        let editBarButton = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItems  = [search, editBarButton]
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
}


