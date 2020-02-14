//
//  FerryTableViewCell.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import UIKit

class FerryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelVehicalNumber: UILabel!
    @IBOutlet weak var labelFrom: UILabel!
    @IBOutlet weak var labelTo: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    
    @IBOutlet weak var viewIndicator: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewIndicator.layer.cornerRadius = 7.5
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
