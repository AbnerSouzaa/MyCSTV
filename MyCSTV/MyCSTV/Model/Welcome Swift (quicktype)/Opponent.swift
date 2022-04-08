// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let opponent = try? newJSONDecoder().decode(Opponent.self, from: jsonData)

import Foundation

// MARK: - Opponent
struct Opponent: Codable {
    let opponent: OpponentClass
    let type: WinnerTypeEnum
}
