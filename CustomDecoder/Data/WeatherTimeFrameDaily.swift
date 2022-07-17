//
//  WeatherTimeFrameDaily.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//
struct WeatherTimeFrameDaily: Codable {
    let dt: Int
    let sunrise: Int
    let sunset: Int
    let moonrise: Int
    let moonset: Int
    let moon_phase: Double //
    let temp: DailyTempDetails
    let feels_like: DailyFeelsLikeParams //
}

struct DailyTempDetails: Codable {
    let day: Double
    let min: Double
    let max: Double
    let night: Double
    let eve: Double //evening
    let morn: Double // morning
    let pressure: Int
    let humidity: Int
    let dew_point: Double //
    let wind_speed: Double//
    let wind_deg: Int//
    let weather: [DailyTempDetailsWeatherDetails]
    let clouds: Int
    let pop: Double
    let rain: Double
    let uvi: Double 
}

struct DailyTempDetailsWeatherDetails: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct DailyFeelsLikeParams: Codable {
    let day: Double
    let night: Double
    let eve: Double // evening
    let morn: Double // morning
}

