//
//  OpponentsMapper.swift
//  MyCSTV
//
//  Created by Abner Souza on 08/04/22.
//

import Foundation

struct OpponentResponse: Codable {
    let opponent: OpponentDataResponse
}

struct OpponentResponseMapper: DTOMapper {
    static func map(_ dto: OpponentResponse) -> Opponents {
        return Opponents(opponent: OpponentDataResponseMapper.map(dto.opponent))
    }
}
