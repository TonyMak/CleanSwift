//
//  ProfileTableViewCell.swift
//  CleanSwiftDemo
//
//  Created by Tony Mak on 06/03/2020.
//  Copyright © 2020 Tony Mak. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var valueLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
