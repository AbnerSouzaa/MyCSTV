// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let league = try? newJSONDecoder().decode(League.self, from: jsonData)

import Foundation

// MARK: - League
struct League: Codable {
    let id: Int
    let imageURL: String?
    let modifiedAt: Date
    let name: LeagueName
    let slug: LeagueSlug
    let url: String?

    enum CodingKeys: String, CodingKey {
        case id
        case imageURL = "image_url"
        case modifiedAt = "modified_at"
        case name, slug, url
    }
}
