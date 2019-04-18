//
//  File4.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct FreeThrows: Codable{
    let ftAtt: Int?
    let ftAttPerGame: Double?
    let ftMade: Int?
    let ftMadePerGame: Double?
    let ftPct: Double?
    
    enum Rebounds: String, CodingKey {
        case ftAtt = "ftAtt"
        case ftAttPerGame = "ftAttPerGame"
        case ftMade = "ftMade"
        case ftMadePerGame = "ftMadePerGame"
        case ftPct = "ftPct"
    }
    
    
}
