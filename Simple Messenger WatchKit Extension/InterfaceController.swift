//
//  InterfaceController.swift
//  Simple Messenger WatchKit Extension
//
//  Created by Soojin Ro on 4/19/15.
//  Copyright (c) 2015 NSoojin. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var message = ["content" : "Hello!"]
        
        WKInterfaceController.openParentApplication(message, reply: { (reply: [NSObject : AnyObject]!, error: NSError!) -> Void in
            println(reply)
        })
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
