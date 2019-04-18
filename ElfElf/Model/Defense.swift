//
//  Defense.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct Defense: Codable{
    let tov: Int?
    let tovPerGame: Double?
    let stl: Int?
    let stlPerGame: Double?
    let blk: Int?
    let blkPerGame: Double?
    let blkAgainst: Int?
    let blkAgainstPerGame: Double?
    
    enum Defense: String, CodingKey {
        case tov = "tov"
        case tovPerGame = "tovPerGame"
        case stl = "stl"
        case stlPerGame = "stlPerGame"
        case blk = "blk"
        case blkPerGame = "blkPerGame"
        case blkAgainst = "blkAgainst"
        case blkAgainstPerGame = "blkAgainstPerGame"
    }
    
}
