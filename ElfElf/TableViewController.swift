//
//  TableViewController.swift
//  ElfElf
//
//  Created by Tod Brown on 4/7/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
     var players = [PlayerStatsTotals]()
    
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

    
    
    @IBOutlet weak var tableView: UITableView!
    
    //var postData = ["LeBron James", "Stephen Curry","Michael Jordan","Klay Thompson","Damian Lillard","Russell Westbrook","James Harden", "Kevin Durant","Paul George","Delon Wright","Mario Hezonja","Arvydas Sabonis","Kemba Walker","Ben Simmons","Joel Embiid","Kyle Lowry","Serge Ibaka", "Marc Gasol","Norman Powell","Trae Young","Kawhi Leonard","Cody Zeller","Victor Oladipo", "Darren Collison","Myles Turner","Lance Stephenson"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
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
                    self.tableView.reloadData()
                } catch let jsonErr {
                    print("Failed to decode:", jsonErr)
                }
            }
            }.resume()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellId")
        let player = players[indexPath.row]
    
        return cell
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
