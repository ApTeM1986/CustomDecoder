//
//  WeatherTimeFrameMinute.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//

import Foundation

struct WeatherTimeFrameMinute: Codable {
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let dateSince = try container.decode(Int.self, forKey: .dt)
        dt = Date(timeIntervalSince1970: TimeInterval(dateSince))
        
        precipitation = try container.decode(Double.self, forKey: .precipitation)
    }
    
    let dt: Date
    let precipitation: Double
    
    enum CodingKeys: String, CodingKey {
        case dt, precipitation
    }
}
