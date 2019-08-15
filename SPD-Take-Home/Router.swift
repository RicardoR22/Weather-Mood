//
//  Router.swift
//  SPD-Take-Home
//
//  Created by Ricardo Rodriguez on 8/15/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation

enum Router {
    case getWeatherData
    
    var scheme: String {
        switch self {
        case .getWeatherData:
            return "https"
        }
    }
    
    var host: String {
        switch self {
        case .getWeatherData:
            return "api.openweathermap.org"
        }
    }
    
    var path: String {
        switch self {
        case .getWeatherData:
            return "/data/2.5/weather"
        }
    }
    
    var method: String {
        switch self {
        case .getWeatherData:
            return "GET"
        }
    }
    
    var params: [URLQueryItem] {
        switch self {
        case .getWeatherData:
            return [URLQueryItem(name: "lat", value: "37.55"),
                    URLQueryItem(name: "lon", value: "122.34"),
                    URLQueryItem(name: "units", value: "imperial"),
                    URLQueryItem(name: "APPID", value: "bc10a20f1155b39c833a07e803842cb8")]
        }
    }
    
}
