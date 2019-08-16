//
//  HomeViewConstraints.swift
//  SPD-Take-Home
//
//  Created by Ricardo Rodriguez on 8/15/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation

extension HomeView {
    
    func setViewConstraints() {
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: frame.height * 0.25).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: frame.width * 0.25).isActive = true
        imageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.05).isActive = true
        locationLabel.widthAnchor.constraint(equalToConstant: frame.width * 0.9).isActive = true
        locationLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10).isActive = true
        locationLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.05).isActive = true
        descriptionLabel.widthAnchor.constraint(equalToConstant: frame.width * 0.9).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 20).isActive = true
        descriptionLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.05).isActive = true
        temperatureLabel.widthAnchor.constraint(equalToConstant: frame.width * 0.9).isActive = true
        temperatureLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20).isActive = true
        temperatureLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        tempMinLabel.translatesAutoresizingMaskIntoConstraints = false
        tempMinLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.05).isActive = true
        tempMinLabel.widthAnchor.constraint(equalToConstant: frame.width * 0.9).isActive = true
        tempMinLabel.topAnchor.constraint(equalTo: temperatureLabel.bottomAnchor, constant: 20).isActive = true
        tempMinLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        tempMaxLabel.translatesAutoresizingMaskIntoConstraints = false
        tempMaxLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.05).isActive = true
        tempMaxLabel.widthAnchor.constraint(equalToConstant: frame.width * 0.9).isActive = true
        tempMaxLabel.topAnchor.constraint(equalTo: tempMinLabel.bottomAnchor, constant: 20).isActive = true
        tempMaxLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        humidityLabel.translatesAutoresizingMaskIntoConstraints = false
        humidityLabel.heightAnchor.constraint(equalToConstant: frame.height * 0.05).isActive = true
        humidityLabel.widthAnchor.constraint(equalToConstant: frame.width * 0.9).isActive = true
        humidityLabel.topAnchor.constraint(equalTo: tempMaxLabel.bottomAnchor, constant: 20).isActive = true
        humidityLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        happyButton.translatesAutoresizingMaskIntoConstraints = false
        happyButton.heightAnchor.constraint(equalToConstant: frame.height * 0.1).isActive = true
        happyButton.widthAnchor.constraint(equalToConstant: frame.width * 0.2).isActive = true
        happyButton.topAnchor.constraint(equalTo: humidityLabel.bottomAnchor, constant: 20).isActive = true
        happyButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: -30).isActive = true
        
        sadButton.translatesAutoresizingMaskIntoConstraints = false
        sadButton.heightAnchor.constraint(equalToConstant: frame.height * 0.1).isActive = true
        sadButton.widthAnchor.constraint(equalToConstant: frame.width * 0.2).isActive = true
        sadButton.topAnchor.constraint(equalTo: humidityLabel.bottomAnchor, constant: 20).isActive = true
        sadButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 30).isActive = true
        
        
        loadIndicator.translatesAutoresizingMaskIntoConstraints = false
        loadIndicator.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        loadIndicator.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        
        
        
    }
}
