//
//  AllToursTableViewCell.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/20/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class AllToursTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tourName: UILabel!
    @IBOutlet weak var tourInfo: UILabel!
    @IBOutlet weak var tourStartDate: UILabel!
    @IBOutlet weak var tourImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
