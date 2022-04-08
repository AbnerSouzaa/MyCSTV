// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let streamsList = try? newJSONDecoder().decode(StreamsList.self, from: jsonData)

import Foundation

// MARK: - StreamsList
struct StreamsList: Codable {
    let embedURL: String
    let language: Language
    let main, official: Bool
    let rawURL: String

    enum CodingKeys: String, CodingKey {
        case embedURL = "embed_url"
        case language, main, official
        case rawURL = "raw_url"
    }
}
