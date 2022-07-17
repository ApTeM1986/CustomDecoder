//
//  WeatherTimeFrameHour.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//
struct WeatherTimeFrameHour: Codable {
    let data: Int
    let temp: Double
    let feelsLike: Double
    let pressure: Int
    let humidity: Int
    let dewPoint: Double
    let uvi: Double
    let clouds: Int
    let visibility: Int
    let windSpeed: Double
    let windDeg: Int
    let windGust: Double
    let weather: [HourlyWeatherParams]
    
    enum CodingKeys: String, CodingKey {
        case data = "dt"
        case temp, pressure, humidity, uvi
        case clouds, visibility, weather
        case feelsLike = "feels_like"
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
    }
}

struct HourlyWeatherParams: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

