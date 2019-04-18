//
//  Offense.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation


struct Offense: Codable{
    let ast: Int?
    let astPerGame: Double?
    let pts: Int?
    let ptsPerGame: Double?
    
    enum Offense: String, CodingKey {
        case ast = "ast"
        case astPerGame = "astPerGame"
        case pts = "pts"
        case ptsPerGame = "ptsPerGame"
        
    }
}
