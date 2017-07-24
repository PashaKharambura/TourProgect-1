//
//  UsersInTourViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class UsersInTourViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, IndicatorInfoProvider {
    @IBOutlet weak var usersTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.delegate = self
        usersTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersInTour")! as! UsersInTourTableViewCell
        
        cell.userPicture.image = UIImage(named: "user_icon")
        return cell
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Їдуть з вами")
    }
    

}
