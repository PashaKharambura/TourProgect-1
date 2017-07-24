//
//  RecomendedTableViewCell.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/24/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class RecomendedTableViewCell: UITableViewCell {
    @IBOutlet weak var tourName: UILabel!
    @IBOutlet weak var tourInfo: UILabel!
    @IBOutlet weak var tourStartDate: UILabel!
    @IBOutlet weak var tourImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
