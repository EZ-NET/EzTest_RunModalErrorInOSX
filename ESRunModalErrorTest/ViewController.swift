//
//  ViewController.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/08.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        print(NSString(format: "👶 Awake Main View Controller = %p", self))
    }
    
    override func viewDidAppear() {
        
        super.viewDidAppear()
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("notificationHandler:"), name: nil, object: nil)
    }
    
    override func viewWillDisappear() {
        
        super.viewWillDisappear()
//        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
}

// MARK: - Notification Handler

extension ViewController {

    func notificationHandler(notification:NSNotification) {
        
        let getObject: ()->NSObject? = { notification.object.map(unsafeDowncast) }
        let getObjectAddressString: ()->String = { getObject().map { NSString(format: "%p", $0) as String } ?? "(null)" }
        
        print("💬 Received: \(notification.name) (object = \(getObjectAddressString()))")
        
        if let object = notification.object {

            // MARK: An error may raise when all notifications received. (It is possible that this object was over-released, or is in the process of deallocation.)
            weak var object:AnyObject? = object
        }
    }
}

