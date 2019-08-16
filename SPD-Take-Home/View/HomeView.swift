//
//  HomeView.swift
//  SPD-Take-Home
//
//  Created by Ricardo Rodriguez on 8/15/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.4033867598, green: 0.6420119405, blue: 0.8947552443, alpha: 1)
        setupSubViews()
        setViewConstraints()
    }
    
    func setupSubViews() {
        addSubview(imageView)
        addSubview(locationLabel)
        addSubview(descriptionLabel)
        addSubview(temperatureLabel)
        addSubview(humidityLabel)
        addSubview(tempMinLabel)
        addSubview(tempMaxLabel)
        addSubview(happyButton)
        addSubview(sadButton)
        imageView.addSubview(loadIndicator)
    }
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let tempMinLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let tempMaxLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let humidityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        return label
    }()
    
    let happyButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("😃", for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        return button
    }()
    
    let sadButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.setTitle("😫", for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true

        return button
    }()
    

    
    
    
    
    
    
    let loadIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.hidesWhenStopped = true
        indicator.startAnimating()
        
        return indicator
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
