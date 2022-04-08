//
//  DTOMapper.swift
//  MyCSTV
//
//  Created by Abner Souza on 08/04/22.
//

import Foundation

protocol DTOMapper {
    associatedtype DataModel
    associatedtype DomainModel
    
    static func map(_ dto: DataModel) -> DomainModel
}
