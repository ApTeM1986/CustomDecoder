//
//  CurrentWeatherParams.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//

struct CurrentWeatherParams: Codable{
    
    let id: Int
    let main: String
    let description: String
    let icon: String
}
