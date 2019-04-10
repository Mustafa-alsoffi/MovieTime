//
//  WelcomeView.swift
//  YoutubeDemo
//
//  Created by Mustafa Alsoffi on 06/04/2019.
//  Copyright © 2019 Mustafa Alsoffi. All rights reserved.
//

import UIKit

public class WelcomeView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
    }
    
    let registerButton : UIButton = {
        let button = UIButton ()
        button.setTitle("Register", for: UIControl.State.normal)
        button.setTitleColor(.black, for: UIControl.State.normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 30
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    } ()
    
    
    let loginButton : UIButton = {
        let button = UIButton ()
        button.setTitle("Login", for: UIControl.State.normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 30
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Welcome To Your Movie App"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    let detailsLabel : UILabel = {
        let label = UILabel()
        label.text = "All your favourite movies and TV-Shows in one app for free! Make sure to give us your support by going to our patrion website in the link below"
        label.textColor = .lightGray
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    let labelsStckView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.spacing   = 8.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    } ()
    
    let buttonsStckView : UIStackView = {
        let stackView = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 8.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        return stackView
    } ()
    
    func createSubviews() {
        // all the layout code from above
        
        buttonsStckView.addArrangedSubview(registerButton)
        buttonsStckView.addArrangedSubview(loginButton)
        labelsStckView.addArrangedSubview(titleLabel)
        labelsStckView.addArrangedSubview(detailsLabel)

        addSubview(buttonsStckView)
        addSubview(labelsStckView)
        
        // buttons constraints
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", view: registerButton)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", view: loginButton)
        buttonsStckView.widthAnchor.constraint(equalTo: widthAnchor, constant: 0).isActive = true
        buttonsStckView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: -16.0).isActive = true
        
        // labels constraints
        labelsStckView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        labelsStckView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        labelsStckView.widthAnchor.constraint(equalTo: widthAnchor, constant: -100).isActive = true
        
    }
}
