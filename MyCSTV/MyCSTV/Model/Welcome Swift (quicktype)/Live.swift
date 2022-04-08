// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let live = try? newJSONDecoder().decode(Live.self, from: jsonData)

import Foundation

// MARK: - Live
struct Live: Codable {
    let opensAt: JSONNull?
    let supported: Bool
    let url: JSONNull?

    enum CodingKeys: String, CodingKey {
        case opensAt = "opens_at"
        case supported, url
    }
}
