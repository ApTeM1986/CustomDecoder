//
//  File.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//

import Foundation

struct JsonParcing: Codable {

    let latitude: Date
    let longitude: Double
    let timeZone: String
    let timeZoneOffset: Int 
    let current: CurrentWeatherData
    let minutely: [WeatherTimeFrameMinute]
    let hourly:[WeatherTimeFrameHour]
    let daily: [WeatherTimeFrameDaily]
    let alerts: [AlertsDetails]
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
        case timeZone = "timezone"
        case timeZoneOffset = "timezone_offset"
        case current, minutely, hourly, daily, alerts
    }
}











    


