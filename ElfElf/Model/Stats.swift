//
//  11.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct Stats: Codable {
    let gamesPlayed: Int?
    let fieldGoals: FieldGoals?
    let freeThrows: FreeThrows?
    let rebounds: Rebounds?
    let offense: Offense?
    let defense: Defense?
    
    enum Stats: String, CodingKey {
        case gamesPlayed = "gamesPlayed"
        case fieldGoals = "fieldGoals"
        case freeThrows = "freeThrows"
        case rebounds = "rebounds"
        case offense = "offense"
        case defense = "defense"
        
    }
    
}
