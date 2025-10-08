//
//  WeatherViewProtocoal.swift
//  Checker
//
//  Created by mac on 1/5/2025.
//

import Foundation
protocol WeatherViewProtocol : AnyObject {
    func setWeather (Weather: String)
}
protocol WeatherPresenterProtocol {
    init (view: WeatherViewProtocol)
    func ShowCurrentWeather (for city :String)
}
