//
//  CurrentWeatherData.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//
struct CurrentWeatherData: Codable{
    
    let dt: Int
    let sunrise: Int
    let sunset: Int
    let temp: Double
    let feelsLike: Double //
    let pressure: Int
    let humidity: Int
    let dewPoint: Double
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
    let oneHour: Int //
}
