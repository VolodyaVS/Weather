//
//  ViewController.swift
//  Weather
//
//  Created by Vladimir Stepanchikov on 26.09.2020.
// https://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=YOUR_API_KEY
// api.openweathermap.org/data/2.5/weather?q=London,uk&appid=a01da6993f7a2ff11f0de7f6c3171871

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.Rain.image
        
        let currentWeather = CurrentWeather(temperature: 10.0, appearentTemperature: 5.0, humidity: 30, pressure: 750, icon: icon)
        
        updateUIWith(currentWeather: currentWeather)
        
//        let urlString = "https://api.forecast.io/forecast/2a6d8e376a69c1ae07d4a52dd0c2dfdc/37.8267,-122.423"
//        let baseURL = URL(string: "https://api.forecast.io/forecast/2a6d8e376a69c1ae07d4a52dd0c2dfdc/")
//        let fullURL = URL(string: "37.8267,-122.423", relativeTo: baseURL)
//        
//        let sessionconfiguration = URLSessionConfiguration.default
//        let session = URLSession(configuration: sessionconfiguration)
//        
//        let request = URLRequest(url: fullURL!)
//        let dataTask = session.dataTask(with: fullURL!) { (data, response, error) in
//        }
//        dataTask.resume()
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.appearentTemperatureLabel.text = currentWeather.appearentTemperatureString
        self.humidityLabel.text = currentWeather.humidityString
        
    }

}

