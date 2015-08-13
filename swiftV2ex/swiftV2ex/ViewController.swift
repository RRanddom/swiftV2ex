//
//  ViewController.swift
//  swiftV2ex
//
//  Created by apple on 15/8/7.
//  Copyright (c) 2015年 apple.com. All rights reserved.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //examples 

        V2exProvider.request(.Latest, completion: { (data, statusCode, response, error) -> () in
            if let response = response {
                println("request latest news response: ")
                //println(response)
            }

            if let data = data {
            }
        })

        V2exProvider.request(.Profile(10), completion: { (data, statusCode, response, error) -> () in

            if let response = response {
                println("request userPage response: ")
                //println(response)
            }

            if let data = data {
                println(NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers, error: nil)!)
                let user = Mapper<User>().map(NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers, error: nil)!)!

            }

        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //test network
    


}

