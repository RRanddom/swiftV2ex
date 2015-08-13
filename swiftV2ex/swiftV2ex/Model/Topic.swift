//
//  Topic.swift
//  swiftV2ex
//
//  Created by apple on 15/8/10.
//  Copyright (c) 2015年 apple.com. All rights reserved.
//

import UIKit
import ObjectMapper

class Topic: Mappable {
    var topicId :String?
    var topicTitle :String?
    var replyCount :Int!
    var url :String?
    var content :String?
    var rendered :String?
    var member :Member?
    var node :Node?
    var created :NSDate?
    var last_modified :NSDate?
    var last_touched :NSDate?

    class func newInstance() -> Mappable {
        return Topic()
    }

    func mapping(map: Map) {
        topicId <- map["id"]
        topicTitle <- map["title"]
        replyCount <- map["replies"]
        url <- map["url"]
        content <- map["content"]
        rendered <- map["content_rendered"]
        created <- (map["created"],DateTransform())
        last_modified <- (map["last_modified"],DateTransform())
        last_touched <- (map["last_touched"],DateTransform())
        member <- map["member"]
        node <- map["node"]
    }
}

