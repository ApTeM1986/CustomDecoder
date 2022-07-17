//
//  WeatherTimeFrameHour.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//
struct WeatherTimeFrameHour: Codable {
    let dt: Int
    let temp: Double
    let feels_like: Double //
    let pressure: Int
    let humidity: Int
    let dew_point: Double //
    let uvi: Double
    let clouds: Int
    let visibility: Int
    let wind_speed: Double //
    let wind_deg: Int //
    let wind_gust: Double //
    let weather: [HourlyWeatherParams]
}

struct HourlyWeatherParams: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

