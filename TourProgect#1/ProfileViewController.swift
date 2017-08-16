//
//  ProfileViewController.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/21/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate, UITextFieldDelegate{
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDescription: UILabel!
    @IBOutlet weak var scrolView: UIScrollView!
    @IBOutlet weak var faceButton: UIButton!

    @IBOutlet weak var deskriptionTextView: UITextView!
    @IBOutlet weak var TelephoneNumberTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.image = UIImage(named: "user_icon")
        profileImage.layer.cornerRadius = 75.0
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
    @IBAction func facebookBtnPressed(_ sender: UIButton) {
        if FBSDKAccessToken.current() != nil {
            self.faceButton.isHidden = true
        } else {
            FacebokkManager.shared.logIn(withReadPermissions: ["public_profile", "email"], from: self, handler: { (result, error) in
                if error == nil {
                    
                    FacebokkManager.getUserData(complition: {
                        self.profileName.text = User.currentUser.name
                        self.profileImage.image = try! UIImage(data: Data(contentsOf: URL(string: User.currentUser.pictureUrl!)!))
                    })
                    
                    
                }
            })
        }
        
        
    }
    

    
    
    
    
    
    
    
    
    
    
    

}
