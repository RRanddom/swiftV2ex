//
//  Node.swift
//  swiftV2ex
//
//  Created by apple on 15/8/10.
//  Copyright (c) 2015年 apple.com. All rights reserved.
//

import UIKit
import ObjectMapper

class Node: Mappable {
    var id :String?
    var name :String?
    var title :String?
    var title_alternative :String?
    var url :String?
    var topics :Int!
    var avatar_mini :String?
    var avatar_normal :String?
    var avatar_large :String?

    class func newInstance() -> Mappable {
        return Node()
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        title <- map["title"]
        title_alternative <- map["title_alternative"]
        url <- map["url"]
        topics <- map["topics"]
        avatar_mini <- map["avatar_mini"]
        avatar_normal <- map["avatar_normal"]
        avatar_large <- map["avatar_large"]
    }
}


