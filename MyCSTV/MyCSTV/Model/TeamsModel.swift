//
//  TeamsModel.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import Foundation

struct Teams: Codable {
    let id: Int
    let name: String
    let imageUrl: URL?
    let players: [Players]
}
