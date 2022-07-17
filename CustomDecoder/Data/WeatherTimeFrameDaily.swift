//
//  WeatherTimeFrameDaily.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//

import Foundation
struct WeatherTimeFrameDaily: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let dataSince = try container.decode(Int.self, forKey: .data)
        data = Date(timeIntervalSince1970: TimeInterval(dataSince))
        
        let sunRiseTime = try container.decode(Int.self, forKey: .sunRise)
        sunRise = Date(timeIntervalSince1970: TimeInterval(sunRiseTime))
        
        let sunSetTime = try container.decode(Int.self, forKey: .sunSet)
        sunSet = Date(timeIntervalSince1970: TimeInterval(sunSetTime))
        
        let moonRiseTime = try container.decode(Int.self, forKey: .moonRise)
        moonRise = Date(timeIntervalSince1970: TimeInterval(moonRiseTime))
        
        let moonSetTime = try container.decode(Int.self, forKey: .moonSet)
        moonSet = Date(timeIntervalSince1970: TimeInterval(moonSetTime))
        
        moonPhase = try container.decode(Double.self, forKey: .moonPhase)
        temp = try container.decode(DailyTempDetails.self, forKey: .temp)
        feelsLike = try container.decode(DailyFeelsLikeParams.self, forKey: .feelsLike)
        pressure = try container.decode(Int.self, forKey: .pressure)
        humidity = try container.decode(Int.self, forKey: .humidity)
        
        let dewPointTemp = try container.decode(Double.self, forKey: .dewPoint)
        dewPoint = Int( dewPointTemp - 273)
        
        windSpeed = try container.decode(Double.self, forKey: .windSpeed)
        windDegree = try container.decode(Int.self, forKey: .windDegree)
        weather = try container.decode([DailyTempDetailsWeatherDetails].self, forKey: .weather)
        clouds = try container.decode(Int.self, forKey: .clouds)
        pop = try container.decode(Double.self, forKey: .pop)
        rain = try container.decode(Double.self, forKey: .rain)
        uvi = try container.decode(Double.self, forKey: .uvi)
    
        
    }
    
    let data: Date
    let sunRise: Date
    let sunSet: Date
    let moonRise: Date
    let moonSet: Date
    let moonPhase: Double
    let temp: DailyTempDetails
    let feelsLike: DailyFeelsLikeParams
    let pressure: Int
    let humidity: Int
    let dewPoint: Int
    let windSpeed: Double
    let windDegree: Int
    let weather: [DailyTempDetailsWeatherDetails]
    let clouds: Int
    let pop: Double
    let rain: Double
    let uvi: Double
    
    enum CodingKeys: String, CodingKey {
        case data = "dt"
        case sunRise = "sunrise"
        case sunSet = "sunset"
        case moonRise = "moonrise"
        case moonSet = "moonset"
        case moonPhase = "moon_phase"
        case temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDegree = "wind_deg"
        case weather, clouds, pop
        case rain, uvi
    }
}

struct DailyTempDetails: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let dayTemp = try container.decode(Double.self, forKey: .day)
        day = Int( dayTemp - 273 )
        
        let minTemp = try container.decode(Double.self, forKey: .min)
        min = Int( minTemp - 273 )
        
        let maxTemp = try container.decode(Double.self, forKey: .max)
        max = Int( maxTemp - 273 )
        
        let nightTemp = try container.decode(Double.self, forKey: .night)
        night = Int( nightTemp - 273 )
        
        let eveningTemp = try container.decode(Double.self, forKey: .evening)
        evening = Int( eveningTemp - 273)
        
        let morningTemp = try container.decode(Double.self, forKey: .morning)
        morning = Int( morningTemp - 273 )
    }
    let day: Int
    let min: Int
    let max: Int
    let night: Int
    let evening: Int
    let morning: Int

    enum CodingKeys: String, CodingKey {
        case day, min, max, night
        case evening = "eve"
        case morning = "morn"
    }
}

struct DailyTempDetailsWeatherDetails: Codable {
   
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct DailyFeelsLikeParams: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let dayT = try container.decode(Double.self, forKey: .day)
        day = Int( dayT - 273 )
        
        let nightT = try container.decode(Double.self, forKey: .night)
        night = Int( nightT - 273 )
        
        let eveningT = try container.decode(Double.self, forKey: .evening)
        evening = Int( eveningT - 273 )
        
        let morningT = try container.decode(Double.self, forKey: .morning)
        morning = Int( morningT - 273 )
    }
   
    let day: Int
    let night: Int
    let evening: Int
    let morning: Int
    
    enum CodingKeys: String, CodingKey {
       
        case evening = "eve"
        case morning = "morn"
        case day, night
    }
}

