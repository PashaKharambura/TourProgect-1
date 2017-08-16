//
//  User.swift
//  TourProgect#1
//
//  Created by Мулярчук Константин on 16.08.17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import UIKit
import SwiftyJSON

class User {
    
    var name: String?
    var email: String?
    var pictureUrl: String?
    var userPoints = 0
    
    
    static let currentUser = User()
    
    
    func setUser (_ json: JSON) {
        self.name = json["name"].string
        self.email = json["email"].string
        let image = json["picture"].dictionary
        let url = image?["data"]?.dictionary
        self.pictureUrl = url?["url"]?.string
    }
    
    func addPoints(point: Int) {
        self.userPoints += point
    }
    func minusPoints(point: Int) {
        self.userPoints -= point
    }
    
    
    func ressetUser() {
        self.email = nil
        self.name = nil
        self.pictureUrl = nil
    }
    
    
}
