//
//  PlayerStatsService.swift
//  ElfElf
//
//  Created by Tod Brown on 4/8/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation


class PlayerStatsService
{
    let playerStatsAPIKey : String
    let playerStatsBaseURL: URL?
    
    init(APIKey: String)
    {
        self.playerStatsAPIKey = APIKey
        playerStatsBaseURL = URL(string: "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json/\(APIKey)")
    }
    
   // func getPlayerStats(
    
    
    
    
    
    
    
}
