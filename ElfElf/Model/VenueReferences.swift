//
//  13.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

struct VenueReferences: Codable{
    let id: Int?
    let name: String?
    let city: String?
    
    enum VenueReferences: String, CodingKey {
        case id = "id"
        case name = "name"
        case city = "city"
        
    }
}
