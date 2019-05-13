//
//  ReviewCell.swift
//  ReloadDataTable
//
//  Created by c85529 on 5/13/19.
//  Copyright © 2019 c85529. All rights reserved.
//

import UIKit

class ReviewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    @IBOutlet weak var reviewedProduct: UIImageView!
    @IBOutlet weak var reviewerImage: UIImageView!
    @IBOutlet weak var dateOfReview: UILabel!
    @IBOutlet weak var reviewComment: UITextView!
    
    
    
    
    
}
