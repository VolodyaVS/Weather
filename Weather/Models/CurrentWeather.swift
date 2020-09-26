//
//  CurrentWeather.swift
//  Weather
//
//  Created by Vladimir Stepanchikov on 26.09.2020.
//

import UIKit

struct CurrentWeather {
    let temperature: Double
    let appearentTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}

extension CurrentWeather {
    var pressureString: String {
        "\(Int(pressure)) mm"
    }
    var humidityString: String {
        "\(Int(humidity)) %"
    }
    var temperatureString: String {
        "\(Int(temperature))˚C"
    }
    var appearentTemperatureString: String {
        "\(Int(appearentTemperature))˚C"
    }
}
