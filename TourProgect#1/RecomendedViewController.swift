//
//  RecomendedViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/24/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class RecomendedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, IndicatorInfoProvider {
    
    @IBOutlet weak var tourTableView: UITableView!
    
    
    var myTours = ["First", "Second"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tourTableView.delegate = self;
        self.tourTableView.dataSource = self;
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recomendedToursCell")! as! RecomendedTableViewCell
        
        cell.tourImage.image = UIImage(named: "\(indexPath.row+1)")
        return cell
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Рекомендовані тури")
    }
    
}
