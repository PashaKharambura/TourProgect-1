//
//  DescriptionViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/24/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class DescriptionViewController: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Про тур")
    }

}
