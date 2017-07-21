//
//  UsersInTourViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class UsersInTourViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var usersTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.delegate = self
        usersTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersInTour")! as! UsersInTourTableViewCell
        
        cell.userPicture.image = UIImage(named: "user_icon")
        return cell
    }

    

}
