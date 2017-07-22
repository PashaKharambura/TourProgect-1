//
//  Tours.swift
//  TourProgect#1
//
//  Created by Pavlo Kharambura on 7/19/17.
//  Copyright © 2017 Pavlo Kharambura. All rights reserved.
//

import Foundation

struct Tour {
    var name: String!
    var tourDate: [String]?
    var events: [Event]!
    var description: String?
    var organizators: [Organizator]!
    var tourists: [Tourist]
    var tourPicture: URL!
    var recommended: Bool
    var comments: [Comment]?
}
