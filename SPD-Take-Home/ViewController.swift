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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ServiceLayer.request(router: Router.getWeatherData) { (result: Result<WeatherModel>) in
            switch result {
            case .success(let result):
                print("success")
                print(result)

                
            case .failure(let error):
                print(error)
            }
        }
        
    }

}

