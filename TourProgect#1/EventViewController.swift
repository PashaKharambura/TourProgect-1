//
//  EventViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 8/8/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var circleView: UIView! {
        didSet {
            circleView.layer.cornerRadius = 50
        }
    }
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventDescriptionLabel: UILabel!
    @IBOutlet weak var tourNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
