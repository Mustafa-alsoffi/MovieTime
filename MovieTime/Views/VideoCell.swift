//
//  VideoCell.swift
//  YoutubeDemo
//
//  Created by Mustafa Alsoffi on 04/04/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

class VideoCell : UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    let thumbnailImageView : UIImageView =  {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Venom")
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 30
        imageView.adjustsImageSizeForAccessibilityContentSizeCategory = true
        
        imageView.layer.masksToBounds = true
        
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let userProfileImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "taylor_swift_profile")
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()

    
    let titleLable : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Venom"
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 20)
        return label
    } ()
    
    let subtitleTextView : UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "PG-13 | 1hr 52min"
        textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        textView.textColor = .lightGray
        textView.isEditable = false
        textView.isUserInteractionEnabled = false
        textView.sizeToFit()
        textView.backgroundColor = .clear
        return textView
    } ()
    
    func setupViews () {
        contentView.addSubview(thumbnailImageView)
        addSubview(userProfileImage)
        addSubview(titleLable)
        addSubview(subtitleTextView)
        
        addConstraintsWithFormat(format: "H:|[v0]|", view: thumbnailImageView)
        addConstraintsWithFormat(format: "H:|-16-[v0(44)]", view: userProfileImage)
        
        
        addConstraintsWithFormat(format: "V:|-16-[v0]-8-[v1(44)]-16-|", view: thumbnailImageView, userProfileImage)
        
        
        // top constraint
        addConstraint(NSLayoutConstraint(item: titleLable, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        // left contsraint
        addConstraint(NSLayoutConstraint(item: titleLable, attribute: .left, relatedBy: .equal, toItem: userProfileImage, attribute: .right, multiplier: 1, constant: 0))
        // right constraint
        addConstraint(NSLayoutConstraint(item: titleLable, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        // hight constraint
        addConstraint(NSLayoutConstraint(item: titleLable, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        //titleLabel was 20 constant
        
        // top constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLable, attribute: .bottom, multiplier: 1, constant: 4))
        // left contsraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImage, attribute: .right, multiplier: 1, constant: 8))
        // right constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        // hight constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
