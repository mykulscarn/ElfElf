//
//  dataModel.swift
//  ElfElf
//
//  Created by Tod Brown on 4/9/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation


///---All of the references from https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/date/20190306/dfs.json // (teamReferences, venueReferences(unused), gameReferences, playerReferences) ---These are the regular season Daily Fantasy Sports statistics


//Copy and paste these into their own files

//   var teamReferences: [TeamReferences]





/*struct TeamReferences: Codable{
    let id: Int?
    let city: String?
    let name: String?
    let abbreviation: String?
    
    enum TeamReferences: String, CodingKey {
        case id = "id"
        case city = "city"
        case name = "name"
        case abbreviation = "abbreviation"
        
    }
    
}


/*

struct VenueReferences: Codable{
    let id: Int?
    let name: String?
    let city: String?
}

struct GameReferences: Codable{
    let id: Int?
    let startTime: String?
    let awayTeam: AwayTeam?
    let homeTeam: HomeTeam?
}

struct HomeTeam: Codable {
    let id: Int?
    let abbreviation: String?
}

struct AwayTeam: Codable {
    let id: Int?
    let abbreviation: String?
}

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
}

struct CurrentTeam: Codable {
    let id: Int?
    let abbreviation: String?
}

// ----------using the URL -> https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json // (references, playerStatsTotals)  These statistics have nothing to do with Daily Fantasy -- They are purely seasonal TOTALS per player

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
}

struct Team: Codable{
    let id: Int?
    let abbreviation: String?
}

struct Stats: Codable {
    let gamesPlayed: Int?
    let fieldGoals: FieldGoals?
    let freeThrows: FreeThrows?
    let rebounds: Rebounds?
    let offense: Offense?
    let defense: Defense?
}

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
}

struct FreeThrows: Codable{
    let ftAtt: Int?
    let ftAttPerGame: Double?
    let ftMade: Int?
    let ftMadePerGame: Double?
    let ftPct: Double?
    
}

struct Rebounds: Codable{
    let offReb: Int?
    let offRebPerGame: Double?
    let defReb: Int?
    let defRebPerGame: Double?
    let reb: Int?
    let rebPerGame: Double?
}

struct Offense: Codable{
    let ast: Int?
    let astPerGame: Double?
    let pts: Int?
    let ptsPerGame: Double?
}

struct Defense: Codable{
    let tov: Int?
    let tovPerGame: Double?
    let stl: Int?
    let stlPerGame: Double?
    let blk: Int?
    let blkPerGame: Double?
    let blkAgainst: Int?
    let blkAgainstPerGame: Double?
}

 */*/
