//
//  File.swift
//  MyCSTV
//
//  Created by Abner Souza on 30/03/22.
//

import Foundation

struct OpponentClass: Codable {
//    let acronym:
    let id: Int
    let imageURL: URL?
    let name: String?
    let slug: String?

    enum CodingKeys: String, CodingKey {
        case id
        case imageURL = "image_url"
        case name, slug
    }
}
