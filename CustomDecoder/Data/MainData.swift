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











    


