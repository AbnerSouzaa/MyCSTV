//
//  MatchesMapper.swift
//  MyCSTV
//
//  Created by Abner Souza on 08/04/22.
//

import Foundation

struct MatchesResponse: Codable {
    
    let serieID: Int
    let opponents: [OpponentResponse]
    let status: String
    let league: LeagueResponse
    let date: String

    
    
    enum CodingKeys: String, CodingKey {
        case opponents, status, league
        case date = "begin_at"
        case serieID = "serie_id"
        
    }
    
}

struct MatchesResponseMapper: DTOMapper {
    static func map(_ dto: MatchesResponse) -> Matches {
        var opponents: [Opponents] = []
        for opponent in dto.opponents {
            opponents.append(OpponentResponseMapper.map(opponent))
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-ddd'T'HH:mm:ssZ"
        let date = formatter.date(from: dto.date )
        
        return Matches(serieID: dto.serieID, opponents: opponents, status: dto.status, league: LeagueResponseMapper.map(dto.league), date: date)
    }
}
