//
//  ProfileViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.image = UIImage(named: "user_icon")
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
