//
//  TableViewController.swift
//  ElfElf
//
//  Created by Tod Brown on 4/7/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let cellId = "cellId123123"
    
    
    /*
    init() {
        
        super.init(nibName: nil, bundle: nil)
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */
    
    @IBOutlet weak var tableView: UITableView!
    
    var players = ["LeBron James", "Stephen Curry","Michael Jordan","Klay Thompson","Damian Lillard","Russell Westbrook","James Harden", "Kevin Durant","Paul George","Delon Wright","Mario Hezonja","Arvydas Sabonis","Kemba Walker","Ben Simmons","Joel Embiid","Kyle Lowry","Serge Ibaka", "Marc Gasol","Norman Powell","Trae Young","Kawhi Leonard","Cody Zeller","Victor Oladipo", "Darren Collison","Myles Turner","Lance Stephenson"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
                    let playerStatsJson = fetchJSON(urlString: "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/player_stats_totals.json")
                    let dfsStatsJson = fetchJSON(urlString: "https://api.mysportsfeeds.com/v2.1/pull/nba/2018-2019-regular/date/20190306/dfs.json")
    
    
    
    
    
    /*
    
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
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count  //players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:cellId, for: indexPath)
        
        let name = self.players[indexPath.row]
        
        cell.textLabel?.text = "players"
        
    
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
