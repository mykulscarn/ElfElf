//
//  PlayerReferences.swift
//  ElfElf
//
//  Created by Tod Brown on 4/10/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation


struct PlayerReferences: Codable {
    let id: Int?
    let firstName: String?
    let lastName: String?
    let primaryPosition: String?
    let jerseyNumber: Int?
    let currentTeam: CurrentTeam?
    let currentRosterStatus: String?
    let height: String?
    let weight: Int?
    let age: Int?
    let college: String?

enum PlayerReferences: String, CodingKey {
    case id = "id"
    case firstName = "firstName"
    case lastName = "lastName"
    case primaryPosition = "primaryPosition"
    case jerseyNumber = "jerseyNumber"
    case currentTeam = "currentTeam"
    case currentRosterStatus = "currentRosterStatus"
    case height = "height"
    case weight = "weight"
    case age = "age"
    case college = "college"
    }
}


