// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let result = try? newJSONDecoder().decode(Result.self, from: jsonData)

import Foundation

// MARK: - Result
struct Result: Codable {
    let score, teamID: Int

    enum CodingKeys: String, CodingKey {
        case score
        case teamID = "team_id"
    }
}
