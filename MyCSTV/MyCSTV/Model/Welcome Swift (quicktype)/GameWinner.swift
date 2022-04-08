// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let gameWinner = try? newJSONDecoder().decode(GameWinner.self, from: jsonData)

import Foundation

// MARK: - GameWinner
struct GameWinner: Codable {
    let id: Int?
    let type: WinnerTypeEnum
}
