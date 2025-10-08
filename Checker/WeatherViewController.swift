//
//  ViewController.swift
//  Checker
//
//  Created by mac on 1/5/2025.
//

import UIKit

class WeatherViewController: UIViewController, WeatherViewProtocol {
    @IBOutlet weak var cityTextField:UITextField!
    @IBOutlet weak var resultlabel:UILabel!
    
   var presenter: WeatherPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = WeatherPresenter(view: self)
    }
    @IBAction func didPressCheck(_sender: UITextField){
        presenter?.ShowCurrentWeather(for: cityTextField.text ?? "")
    }
    func setWeather (Weather:String){
        resultlabel.text = Weather
    }
}

