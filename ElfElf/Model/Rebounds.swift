//
//  File.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct Rebounds: Codable{
    let offReb: Int?
    let offRebPerGame: Double?
    let defReb: Int?
    let defRebPerGame: Double?
    let reb: Int?
    let rebPerGame: Double?
    
    
    enum Rebounds: String, CodingKey {
        case offReb = "offReb"
        case offRebPerGame = "offRebPerGame"
        case defReb = "defReb"
        case defRebPerGame = "defRebPerGame"
        case reb = "reb"
        case rebPerGame = "rebPerGame"
    }
    
}
