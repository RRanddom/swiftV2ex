//
//  User.swift
//  swiftV2ex
//
//  Created by apple on 15/8/10.
//  Copyright (c) 2015年 apple.com. All rights reserved.
//

import UIKit
import ObjectMapper

class User: Mappable {
    var status :String?
    var id :Int!
    var url :String?
    var username :String?
    var website :String?
    var twitter :String?
    var psn :String?
    var github :String?
    var btc :String?
    var location :String?
    var tagline :String?
    var bio :String?
    var avatar_mini :String?
    var avatar_normal :String?
    var avatar_large :String?
    var created :NSDate?

    class func newInstance() -> Mappable {
        return User()
    }

    func mapping(map: Map) {
        status <- map["status"]
        id <- map["id"]
        url <- map["url"]
        username <- map["username"]
        website <- map["website"]
        twitter <- map["twitter"]
        psn <- map["psn"]
        github <- map["github"]
        btc <- map["btc"]
        location <- map["location"]
        tagline <- map["tagline"]
        bio <- map["bio"]
        avatar_mini <- map["avatar_mini"]
        avatar_normal <- map["avatar_normal"]
        avatar_large <- map["avatar_large"]
        created <- (map["created"],DateTransform())
    }
}
