//
//  CustomCell.swift
//  ReloadDataTable
//
//  Created by c85529 on 5/13/19.
//  Copyright © 2019 c85529. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var productCellImage: UIImageView!

    @IBOutlet weak var productCellName: UILabel!
    @IBOutlet weak var productCellSize: UIButton!
    
    
    @IBAction func openCalendarAvailability(_ sender: UIButton) {
        
        print("calendar avialability Pressed")
    }
    
    
}
