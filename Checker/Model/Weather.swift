//
//  Weather.swift
//  Checker
//
//  Created by mac on 1/5/2025.
//

import Foundation
struct Weather {
    var city : String
    var temprature : Int
}
class WeatherProvidier{
    func getWeather (city :String)-> Weather {
        let temprature = Int.random(in: -30 ... 60)
        return Weather(city: city,temprature: temprature)
    }
}
