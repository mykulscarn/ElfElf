//
//  Methods.swift
//  ElfElf
//
//  Created by Tod Brown on 4/9/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import Foundation

typealias dict = [String : AnyObject]

func fetchJSON(urlString: String)  -> dict {
    
    
    guard let url = URL(string: urlString) else { return [ : ] }
    URLSession.shared.dataTask(with: url) { (data, _, err) in
        DispatchQueue.main.async {
            if let err = err {
                print("Failed to get data from url:", err)
                return
            }
            
            guard let data = data else {  return  }
            
            do {
                
                let decoder = JSONDecoder()
            //    self.players = try decoder.decode([PlayerStatsTotals].self, from: data)
          //      self.tableView.reloadData()
            } catch let jsonErr {
                print("Failed to decode:", jsonErr)
            }
        }
        }.resume()
    
    //FIXME: - return proper dictionary
    return dict()
}
