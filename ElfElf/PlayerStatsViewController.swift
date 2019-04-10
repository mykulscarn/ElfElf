//
//  PlayerStatsViewController.swift
//  ElfElf
//
//  Created by Tod Brown on 4/9/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit

class PlayerStatsViewController: UIViewController {
    
    var players = [PlayerStatsTotals]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      fetchJSON()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    fileprivate func fetchJSON() {
        let urlString = "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            DispatchQueue.main.async {
                if let err = err {
                    print("Failed to get data from url:", err)
                    return
                }
                
                guard let data = data else {  return  }
                
                do {
                    
                    let decoder = JSONDecoder()
                    self.players = try decoder.decode([PlayerStatsTotals].self, from: data)
                  //  self.tableView.reloadData()
                } catch let jsonErr {
                    print("Failed to decode:", jsonErr)
                }
            }
        }.resume()
    }
    

    
    
}
