//
//  7.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct PlayerStatsTotals: Codable {
    let id: Int?
    let firstName: String?
    let lastNAme: String?
    let primaryPosition: String?
    let jerseyNumber: Int?
    let height: String?
    let weight: Int?
    let age: Int?
    let college: String?
    let team: Team?
    let stats: Stats?
    
    enum PlayerStatsTotals: String, CodingKey {
        case id = "id"
        case firstName = "firstName"
        case lastNAme = "lastNAme"
        case primaryPosition = "primaryPosition"
        case jerseyNumber = "jerseyNumber"
        case height = "height"
        case weight = "weight"
        case age = "age"
        case college = "college"
        case team = "team"
        case stats = "stats"
        
    }
    
}
