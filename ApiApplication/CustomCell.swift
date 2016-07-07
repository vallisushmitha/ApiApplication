//
//  CustomCell.swift
//  ApiApplication
//
//  Created by kvanaMini1 on 04/07/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var bodyLbl: UILabel!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
