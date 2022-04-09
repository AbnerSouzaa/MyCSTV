//
//  OpponentsDataResponse.swift
//  MyCSTV
//
//  Created by Abner Souza on 08/04/22.
//

import Foundation

struct OpponentDataResponse: Codable {
    let imageUrl: String?
    let name: String
    let id: Int
    let slug: String?
    
    private enum CodingKeys: String, CodingKey {
        case name, id
        case imageUrl = "image_url"
        case slug
    }
}

struct OpponentDataResponseMapper: DTOMapper {
    static func map(_ dto: OpponentDataResponse) -> OpponentClass {
        var url: URL? = nil
        if let urlString = dto.imageUrl {
            url = URL(string: urlString)
        }
        
        return OpponentClass(id: dto.id, imageURL: url, name: dto.name, slug: dto.slug)
    }
}
