//
//  Member.swift
//  swiftV2ex
//
//  Created by apple on 15/8/10.
//  Copyright (c) 2015年 apple.com. All rights reserved.
//

import UIKit
import ObjectMapper

class Member: Mappable {
    var id :String?
    var username :String?
    var tagline :String?
    var avatar_mini :String?
    var avatar_large :String?
    var avatar_normal :String?

    class func newInstance() -> Mappable {
        return Member()
    }

    func mapping(map: Map) {
        id <- map["id"]
        username <- map["username"]
        tagline <- map["tagline"]
        avatar_mini <- map["avatar_mini"]
        avatar_normal <- map["avatar_normal"]
        avatar_large <- map["avatar_large"]
    }

}
