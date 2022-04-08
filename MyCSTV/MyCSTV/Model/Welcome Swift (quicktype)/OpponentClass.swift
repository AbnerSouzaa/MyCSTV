// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let opponentClass = try? newJSONDecoder().decode(OpponentClass.self, from: jsonData)

import Foundation

// MARK: - OpponentClass
struct OpponentClass: Codable {
    let acronym: JSONNull?
    let id: Int
    let imageURL: String?
    let location: String?
    let modifiedAt: Date
    let name, slug: String

    enum CodingKeys: String, CodingKey {
        case acronym, id
        case imageURL = "image_url"
        case location
        case modifiedAt = "modified_at"
        case name, slug
    }
}
