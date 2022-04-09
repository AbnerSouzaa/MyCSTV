//
//  LeagueResponseMapper.swift
//  MyCSTV
//
//  Created by Abner Souza on 08/04/22.
//

import Foundation

struct LeagueResponse: Codable {
    let imageUrl: String?
    let name: String
    let slug: String?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case imageUrl = "image_url"
        case slug
    }
}

struct LeagueResponseMapper: DTOMapper {
    static func map(_ dto: LeagueResponse) -> League {
        var url: URL? = nil
        if let urlString = dto.imageUrl {
            url = URL(string: urlString)
        }
        
        return League(imageUrl: url, name: dto.name, slug: dto.slug)
    }
}
