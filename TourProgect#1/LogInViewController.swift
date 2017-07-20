//
//  LogInViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/20/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        firstTextField.delegate = self
//        secondTextField.delegate = self
//        thirdTextField.delegate = self
        
    }


    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}
