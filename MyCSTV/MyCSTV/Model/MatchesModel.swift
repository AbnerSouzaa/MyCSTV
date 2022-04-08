//
//  MatchesCoordinator.swift
//  MyCSTV
//
//  Created by Abner Souza on 30/03/22.
//

import Foundation

struct Matches: Codable {
    
    let serieID: Int
    let opponents: [Opponents]
    let status: String
    let league: League?
    let date: String

    
    
    enum CodingKeys: String, CodingKey {
        case opponents, status, league
        case date = "begin_at"
        case serieID = "serie_id"
        
    }
    
}

