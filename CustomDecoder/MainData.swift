//
//  File.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//

import Foundation

struct jsonParcing: Codable {
    let lat: Double
    let lon: Double
    let timezone: String //
    let timezone_offset: Int //
    let current: CurrentWeatherData
    let minutely: [WeatherTimeFrameMinute]
    let hourly:[WeatherTimeFrameHour]
    let daily: [WeatherTimeFrameDaily]
    let alerts: [AlertsDetails]
    
}
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
struct CurrentWeatherParams: Codable{
    let id: Int
    let main: String
    let description: String
    let icon: String
}
struct Rain: Codable{
    let oneHour: Int //
}
struct WeatherTimeFrameMinute: Codable {
    let dt: Int
    let precipitation: Double
}
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

struct DailyFeelsLikeParams: Codable {
    let day: Double
    let night: Double
    let eve: Double // evening
    let morn: Double // morning
}
struct DailyTempDetailsWeatherDetails: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct AlertsDetails: Codable {
    let senderName: String
    let event: String
    let start: Int
    let end: Int
    let description: String
    let tags: [String]
    
    enum CodingKeys: String, CodingKey {
        case senderName = "sender_name"
        case event
        case start
        case end
        case description
        case tags
    }
}
    


