//
//  AllToursViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/20/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class MyToursViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tourTableView: UITableView!


    var myTours = ["First"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tourTableView.delegate = self;
        self.tourTableView.dataSource = self;
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myToursCell")! as! MyTourTableViewCell
       
        
        return cell
    }

    
    
}
