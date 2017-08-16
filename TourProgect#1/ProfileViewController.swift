//
//  ProfileViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate, UITextFieldDelegate{
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDescription: UILabel!
    @IBOutlet weak var scrolView: UIScrollView!

    @IBOutlet weak var deskriptionTextView: UITextView!
    @IBOutlet weak var TelephoneNumberTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.image = UIImage(named: "user_icon")
        profileImage.layer.cornerRadius = 75.0
//        profileImage.layer.shadowColor = UIColor.black.cgColor
//        profileImage.layer.shadowOffset = CGSize.zero
//        profileImage.layer.shadowOpacity = 0.8
//        profileImage.layer.shadowRadius = 5
    
        
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func pickerButtonPressed(_ sender: UIButton) {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        let actionShet = UIAlertController(title: "Photo sourse", message: "Choose a source", preferredStyle: .actionSheet)
        
        actionShet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action: UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion: nil)
            }else {
                print("Camera not available")
            }
        }))
            
        actionShet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action: UIAlertAction) in
              imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }))
        
        actionShet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionShet, animated: true, completion: nil)

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        profileImage.image = image
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        picker.dismiss(animated: true, completion: nil)
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        
//        textField.resignFirstResponder()
//        return true
//    }
//    
//    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
//        
//        
//        return true
//    }
//    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        scrolView.setContentOffset(CGPoint(x: 0, y: 200), animated: true)
//    }
//    func textViewDidBeginEditing(_ textView: UITextView) {
//        scrolView.setContentOffset(CGPoint(x: 0, y: 200), animated: true)
//    }
//    
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        scrolView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
//    }
//    func textViewDidEndEditing(_ textView: UITextView) {
//        scrolView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
//    }
    
    
    
    
    
    
    
    
    
    
    

}
