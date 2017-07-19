//
//  User.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/19/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import Foundation

struct User {
    var name: String!
    var code: String
    var userPicture: URL?
    var description: String?
    var userTours: [Tour]?
}
