//
//  WeatherPresnter.swift
//  Checker
//
//  Created by mac on 1/5/2025.
//

import Foundation
class WeatherPresenter: WeatherPresenterProtocol {
    
    unowned let view: WeatherViewProtocol
    private let weatherProvider = WeatherProvidier()
    private var weather: Weather?
    
    required init(view: WeatherViewProtocol) {
        self.view = view
    }
    func ShowCurrentWeather(for city: String) {
        weather = weatherProvider.getWeather(city: city)
        view.setWeather(Weather: "\(weather?.city ?? "") Temprature: \(weather?.temprature ?? 0)")
    }
}
