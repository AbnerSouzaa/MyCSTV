// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let serie = try? newJSONDecoder().decode(Serie.self, from: jsonData)

import Foundation

// MARK: - Serie
struct Serie: Codable {
    let beginAt: Date
    let serieDescription: JSONNull?
    let endAt: Date?
    let fullName: FullName
    let id, leagueID: Int
    let modifiedAt: Date
    let name: SerieName?
    let season: String?
    let slug: SerieSlug
    let tier: Tier
    let winnerID, winnerType: JSONNull?
    let year: Int

    enum CodingKeys: String, CodingKey {
        case beginAt = "begin_at"
        case serieDescription = "description"
        case endAt = "end_at"
        case fullName = "full_name"
        case id
        case leagueID = "league_id"
        case modifiedAt = "modified_at"
        case name, season, slug, tier
        case winnerID = "winner_id"
        case winnerType = "winner_type"
        case year
    }
}
