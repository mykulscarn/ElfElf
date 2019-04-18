//
//  PlayerTableViewCell.swift
//  ElfElf
//
//  Created by Tod Brown on 4/18/19.
//  Copyright © 2019 Tod Brown. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var fPointsLabel: UILabel!
    @IBOutlet var position: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
