//
//  Extensions.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 21.07.2022.
//


protocol ConvertTemp {
      
}

extension ConvertTemp {
    static func kelvinToCelsiy (temp: Double) -> Int {
       let convertTemp = Int( temp - 273 )
        return convertTemp
    }
}
