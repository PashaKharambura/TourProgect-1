//
//  FacebookManager.swift
//  TourProgect#1
//
//  Created by Мулярчук Константин on 16.08.17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//


import Foundation
import FBSDKLoginKit
import SwiftyJSON


class FacebokkManager {
    static let  shared = FBSDKLoginManager()
    
    public class func getUserData(complition: @escaping () -> Void) {
        if FBSDKAccessToken.current() != nil {
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "name, email, picture.type(large)"]).start(completionHandler: { (connection, result, error) in
                if error == nil {
                    let json = JSON(result!)
                    print(json)
                    
                    User.currentUser.setUser(json)
                    complition()
                }
            })
        }
        
    }
}
