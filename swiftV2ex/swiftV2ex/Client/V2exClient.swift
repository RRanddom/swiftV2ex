//
//  V2exClient.swift
//  swiftV2ex
//
//  Created by apple on 15/8/10.
//  Copyright (c) 2015年 apple.com. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import Moya

let V2exProvider = MoyaProvider<V2ex>()

public enum V2ex {
    case User(String)
    case Profile(Int)
    case Latest
    case Hotest
    case Node(String)
}

private extension String {
    var URLEscapedString: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!
    }
}

extension V2ex : MoyaTarget {
    public var baseURL: NSURL {return NSURL(string: "https://www.v2ex.com/api/")! }
    public var path: String {
        switch self {
        case .User(let username):
            return "members/show.json"

        case .Profile(let userid):
            return "members/show.json"

        case .Latest:
            return "topics/latest.json"

        case .Hotest:
            return "topics/hot.json"

        case .Node(let nodename):
            return "nodes/show.json"
        }
    }

    public var method: Moya.Method {
        return .GET
    }

    public var parameters: [String: AnyObject] {
        switch self {
        case .User(let username):
            return ["username":username]

        case .Profile(let userid):
            return ["id":userid]

        case .Node(let nodename):
            return ["name":nodename]

        default:
            return [:]
        }
    }


    public var sampleData: NSData {
        switch self {
        case .Hotest:
            return "hotest news".dataUsingEncoding(NSUTF8StringEncoding)!
        case .Latest:
            return "latest news".dataUsingEncoding(NSUTF8StringEncoding)!
        case .Node(let nodename):
            return "{node:nodeInfo}".dataUsingEncoding(NSUTF8StringEncoding)!
        case .Profile(let userid):
            return "user profile with given userid".dataUsingEncoding(NSUTF8StringEncoding)!
        case .User(let username):
            return "user profile with given username".dataUsingEncoding(NSUTF8StringEncoding)!
        }
    }


}

public func url(route: MoyaTarget) -> String {
    return route.baseURL.URLByAppendingPathComponent(route.path).absoluteString!
}

