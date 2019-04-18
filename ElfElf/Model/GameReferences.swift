//
//  12.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct GameReferences: Codable{
    let id: Int?
    let startTime: String?
    let awayTeam: AwayTeam?
    let homeTeam: HomeTeam?
    
    enum TeamReferences: String, CodingKey {
        case id = "id"
        case startTime = "startTime"
        case awayTeam = "awayTeam"
        case homeTeam = "homeTeam"
    }
}
