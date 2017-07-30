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
        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdTextField.delegate = self
        
        firstTextField.becomeFirstResponder()
        self.hideKeyboardWhenTappedAround()

    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (string == UIPasteboard.general.string) {
            firstTextField.text = string[0]+string[1]
            secondTextField.text = string[2]+string[3]
            thirdTextField.text = string[4]+string[5]
        }
        
        if firstTextField.text?.characters.count == 2 && string != "" {
            secondTextField.becomeFirstResponder()
        }
        
        if secondTextField.text?.characters.count == 2 && string != "" {
            thirdTextField.becomeFirstResponder()
        }
        
        if secondTextField.text?.length == 0 && string == "" {
            firstTextField.becomeFirstResponder()
        }
        
        let  char = string.cString(using: String.Encoding.utf8)!
        let isBackSpace = strcmp(char, "\\b")
        
        if (isBackSpace == -92) {
            firstTextField.text = ""
            secondTextField.text = ""
            thirdTextField.text = ""
            firstTextField.becomeFirstResponder()
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
