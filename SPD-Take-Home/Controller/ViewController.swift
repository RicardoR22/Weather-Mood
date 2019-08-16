//
//  ViewController.swift
//  SPD-Take-Home
//
//  Created by Ricardo Rodriguez on 8/1/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var weatherInfo: WeatherModel!
    var homeView: HomeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let homeView = HomeView(frame: self.view.frame)
        self.homeView = homeView
        self.view.addSubview(homeView)
        DispatchQueue.global(qos: .background).async {
            ServiceLayer.request(router: Router.getWeatherData) { (result: Result<WeatherModel>) in
                switch result {
                case .success(let result):
                    print("success")
                    self.weatherInfo = result
                    print(self.weatherInfo!)
                    let weather = self.weatherInfo.weather
                    
                    guard let imageURL = URL(string: "https://openweathermap.org/img/w/" + weather[0].icon + ".png"),
                        let imageData = try? Data(contentsOf: imageURL) else {
                            return
                    }
                    DispatchQueue.main.async {
                        homeView.imageView.image = UIImage(data: imageData)
                        homeView.locationLabel.text = result.name
                        homeView.descriptionLabel.text = weather[0].weatherDescription.capitalized
                        homeView.temperatureLabel.text = "Current Temperature: \(Int(result.main.temp))°"
                        homeView.tempMinLabel.text = "Low: \(Int(result.main.tempMin))°"
                        homeView.tempMaxLabel.text = "High: \(Int(result.main.tempMax))°"
                        homeView.humidityLabel.text = "Humidity: \(Int(result.main.humidity))"
                        homeView.loadIndicator.removeFromSuperview()
                    }
                    
                    
                    
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    
    
    
    

}

