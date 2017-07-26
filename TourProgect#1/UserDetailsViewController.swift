//
//  UserDetailsViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/26/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
