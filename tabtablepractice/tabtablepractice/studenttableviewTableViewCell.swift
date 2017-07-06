//
//  studenttableviewTableViewCell.swift
//  tabtablepractice
//
//  Created by Syed Shahrukh Haider on 02/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class studenttableviewTableViewCell: UITableViewCell {

    @IBOutlet weak var NAME: UILabel!
    @IBOutlet weak var AGE: UILabel!
    @IBOutlet weak var COURSE: UILabel!
    

        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
