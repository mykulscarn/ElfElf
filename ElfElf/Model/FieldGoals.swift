//
//  5.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct FieldGoals: Codable{
    let fg2PtAtt: Double?
    let fg2PtAttPerGame: Double?
    let fg2PtMade: Double?
    let fg2PtPct: Double?
    let fg3PtAtt: Double?
    let fg3PtAttPerGame: Double?
    let fg3PtMadePerGame: Double?
    let fg3PtPct: Double?
    let fgAtt: Double?
    let fgAttPerGame: Double?
    let fgMade: Double?
    let fgMadePerGame: Double?
    let fgPct: Double?
    
    enum Rebounds: String, CodingKey {
        case fg2PtAtt = "fg2PtAtt"
        case fg2PtAttPerGame = "fg2PtAttPerGame"
        case fg2PtMade = "fg2PtMade"
        case fg2PtPct = "fg2PtPct "
        case fg3PtAtt = "fg3PtAtt "
        case fg3PtAttPerGame = "fg3PtAttPerGame "
        case fg3PtMadePerGame = "fg3PtMadePerGame "
        case fg3PtPct = "fg3PtPct "
        case fgAtt = "fgAtt "
        case fgAttPerGame = "fgAttPerGame "
        case fgMade = "fgMade "
        case fgMadePerGame =  " fgMadePerGame"
        case fgPct = "fgPct"
    }
    
}
