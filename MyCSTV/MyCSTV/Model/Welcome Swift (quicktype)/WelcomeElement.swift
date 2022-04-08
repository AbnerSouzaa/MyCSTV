// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcomeElement = try? newJSONDecoder().decode(WelcomeElement.self, from: jsonData)

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable {
    let scheduledAt: Date
    let serieID: Int
    let liveEmbedURL: String?
    let endAt: Date?
    let videogameVersion: JSONNull?
    let detailedStats: Bool
    let originalScheduledAt: Date
    let leagueID, tournamentID, id: Int
    let modifiedAt: Date
    let rescheduled: Bool
    let streamsList: [StreamsList]
    let beginAt: Date
    let tournament: Tournament
    let games: [Game]
    let results: [Result]
    let streams: Streams
    let slug: String
    let live: Live
    let videogame: Videogame
    let forfeit, draw: Bool
    let status: Status
    let serie: Serie
    let gameAdvantage: JSONNull?
    let numberOfGames: Int
    let winner: OpponentClass?
    let league: League
    let matchType: MatchType
    let opponents: [Opponent]
    let winnerID: Int?
    let name: String
    let officialStreamURL: String?

    enum CodingKeys: String, CodingKey {
        case scheduledAt = "scheduled_at"
        case serieID = "serie_id"
        case liveEmbedURL = "live_embed_url"
        case endAt = "end_at"
        case videogameVersion = "videogame_version"
        case detailedStats = "detailed_stats"
        case originalScheduledAt = "original_scheduled_at"
        case leagueID = "league_id"
        case tournamentID = "tournament_id"
        case id
        case modifiedAt = "modified_at"
        case rescheduled
        case streamsList = "streams_list"
        case beginAt = "begin_at"
        case tournament, games, results, streams, slug, live, videogame, forfeit, draw, status, serie
        case gameAdvantage = "game_advantage"
        case numberOfGames = "number_of_games"
        case winner, league
        case matchType = "match_type"
        case opponents
        case winnerID = "winner_id"
        case name
        case officialStreamURL = "official_stream_url"
    }
}
