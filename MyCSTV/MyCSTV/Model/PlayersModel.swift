//
//  PlayersModel.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import Foundation

struct Players: Codable {
    
    let firstName: String?
    let lastName: String?
    let nickname: String?
    let imageUrl: URL?
    
    private enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case nickname = "name"
        case imageUrl = "image_url"
    }
}
