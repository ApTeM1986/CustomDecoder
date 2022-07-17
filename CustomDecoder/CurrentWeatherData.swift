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
    let feels_like: Double //
    let pressure: Int
    let humidity: Int
    let dew_point: Double
    let uvi: Double
    let clouds: Int
    let visibility: Int
    let wind_speed: Int //
    let wind_deg: Int //
    let weather: [CurrentWeatherParams]
    let rain: Rain   
}
