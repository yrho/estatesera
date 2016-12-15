//
//  EstatesDetailTableViewCell.swift
//  Estatesera
//
//  Created by Ho on 30/11/16.
//  Copyright © 2016 ho. All rights reserved.
//

import UIKit

class EstatesDetailTableViewCell: UITableViewCell {
    
    @IBOutlet var fieldLabel:UILabel!
    @IBOutlet var valueLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
