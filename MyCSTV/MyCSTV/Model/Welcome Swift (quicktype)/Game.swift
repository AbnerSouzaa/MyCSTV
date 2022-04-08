// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let game = try? newJSONDecoder().decode(Game.self, from: jsonData)

import Foundation

// MARK: - Game
struct Game: Codable {
    let beginAt: Date?
    let complete, detailedStats: Bool
    let endAt: Date?
    let finished, forfeit: Bool
    let id: Int
    let length: Int?
    let matchID, position: Int
    let status: Status
    let videoURL: String?
    let winner: GameWinner
    let winnerType: WinnerTypeEnum

    enum CodingKeys: String, CodingKey {
        case beginAt = "begin_at"
        case complete
        case detailedStats = "detailed_stats"
        case endAt = "end_at"
        case finished, forfeit, id, length
        case matchID = "match_id"
        case position, status
        case videoURL = "video_url"
        case winner
        case winnerType = "winner_type"
    }
}
