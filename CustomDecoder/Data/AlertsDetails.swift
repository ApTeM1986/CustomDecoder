//
//  AlertsDetails.swift
//  CustomDecoder
//
//  Created by Artem Stetsenko on 17.07.2022.
//
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
