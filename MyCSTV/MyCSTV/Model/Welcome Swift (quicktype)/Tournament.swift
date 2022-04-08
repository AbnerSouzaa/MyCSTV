// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tournament = try? newJSONDecoder().decode(Tournament.self, from: jsonData)

import Foundation

// MARK: - Tournament
struct Tournament: Codable {
    let beginAt: Date
    let endAt: Date?
    let id, leagueID: Int
    let liveSupported: Bool
    let modifiedAt: Date
    let name: TournamentName
    let prizepool: JSONNull?
    let serieID: Int
    let slug: String
    let tier: Tier
    let winnerID: JSONNull?
    let winnerType: WinnerTypeEnum

    enum CodingKeys: String, CodingKey {
        case beginAt = "begin_at"
        case endAt = "end_at"
        case id
        case leagueID = "league_id"
        case liveSupported = "live_supported"
        case modifiedAt = "modified_at"
        case name, prizepool
        case serieID = "serie_id"
        case slug, tier
        case winnerID = "winner_id"
        case winnerType = "winner_type"
    }
}
