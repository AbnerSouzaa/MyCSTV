// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let english = try? newJSONDecoder().decode(English.self, from: jsonData)

import Foundation

// MARK: - English
struct English: Codable {
    let embedURL, rawURL: String?

    enum CodingKeys: String, CodingKey {
        case embedURL = "embed_url"
        case rawURL = "raw_url"
    }
}
