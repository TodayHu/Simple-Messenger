//
//  ViewController.swift
//  Simple Messenger
//
//  Created by Soojin Ro on 4/19/15.
//  Copyright (c) 2015 NSoojin. All rights reserved.
//

import Parse
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var query = PFQuery(className:"Message")
        query.whereKey("from", equalTo:"Soojin")
        //query.whereKey("content", containsString: "u")
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil && objects != nil{
                // The find succeeded.
                println("Successfully retrieved \(objects!.count) scores.")
                // Do something with the found objects
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        println(object.description)
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error) \(error?.userInfo!)")
            }
        }
    }
}

