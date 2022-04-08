//
//  LeagueModel.swift
//  MyCSTV
//
//  Created by Abner Souza on 04/04/22.
//

import Foundation

struct League: Codable {
    
    let imageUrl: URL?
    let name: String?
    let slug: String?

    
    
    enum CodingKeys: String, CodingKey {
        case imageUrl = "image_url"
        case name, slug
        
    }
}
