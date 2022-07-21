//
//  CurrentWeatherData.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//

import Foundation

struct CurrentWeatherData: Codable, ConvertTemp {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let dataTime = try container.decode(Int.self, forKey: .dt)
        dt = Date(timeIntervalSince1970: TimeInterval(dataTime))
        
        let sunriseTime = try container.decode(Int.self, forKey: .sunrise)
        sunrise = Date(timeIntervalSince1970: TimeInterval(sunriseTime))
        
        let sunsetTime = try container.decode(Int.self, forKey: .sunset)
        sunset = Date(timeIntervalSince1970: TimeInterval(sunsetTime))
        
        
        let tempTemp = try container.decode(Double.self, forKey: .temp)
        temp = CurrentWeatherData.self.kelvinToCelsiy(temp: tempTemp)
        
        
        let feelsLikeTemp = try container.decode(Double.self, forKey: .feelsLike)
        feelsLike = CurrentWeatherData.self.kelvinToCelsiy(temp: feelsLikeTemp)
        
        pressure = try container.decode(Int.self, forKey: .pressure)
        humidity = try container.decode(Int.self, forKey: .humidity)
        
        let dewPointTemp = try container.decode(Double.self, forKey: .dewPoint)
        dewPoint = CurrentWeatherData.self.kelvinToCelsiy(temp: dewPointTemp)
        
        uvi = try container.decode(Double.self, forKey: .uvi)
        clouds = try container.decode(Int.self, forKey: .clouds)
        visibility = try container.decode(Int.self, forKey: .visibility)
        windSpeed = try container.decode(Int.self, forKey: .windSpeed)
        windDegree = try container.decode(Int.self, forKey: .windDegree)
        weather = try container.decode([CurrentWeatherParams].self, forKey: .weather)
        rain = try container.decode(Rain.self, forKey: .rain)
       
        
    }
    
    let dt: Date
    let sunrise: Date
    let sunset: Date
    let temp: Int
    var feelsLike: Int
    let pressure: Int
    let humidity: Int
    let dewPoint: Int
    let uvi: Double
    let clouds: Int
    let visibility: Int
    let windSpeed: Int //
    let windDegree: Int //
    let weather: [CurrentWeatherParams]
    let rain: Rain
    
    enum CodingKeys: String, CodingKey {
        case dt, sunrise, sunset, temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case uvi, clouds, visibility
        case windSpeed = "wind_speed"
        case windDegree = "wind_deg"
        case weather, rain
    }
 
}

struct Rain: Codable{
    let oneHour: Double
    
    enum CodingKeys: String, CodingKey {
        case oneHour = "1h"
    }
}


