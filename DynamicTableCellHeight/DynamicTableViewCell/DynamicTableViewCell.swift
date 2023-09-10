//
//  DynamicTableViewCell.swift
//  DynamicTableCellHeight
//
//  Created by ios Tech Trainer on 09/09/23.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {

    @IBOutlet var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
