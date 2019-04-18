//
//  10.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct CurrentTeam: Codable {
    let id: Int?
    let abbreviation: String?
    
    enum CurrentTeam: String, CodingKey {
        case id = "id"
        case abbreviation = "abbreviation"
        
    }
}
