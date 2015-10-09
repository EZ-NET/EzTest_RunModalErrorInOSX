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
        
//        let selector = Selector("notificationHandlerCaseInThisTime:")
//        let selector = Selector("notificationHandlerCaseSync:")
        let selector = Selector("notificationHandlerCaseAsync:")

        NSNotificationCenter.defaultCenter().addObserver(self, selector: selector, name: nil, object: nil)
    }
    
    override func viewWillDisappear() {
        
        super.viewWillDisappear()
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
}

// MARK: - Notification Handler

let queue = dispatch_queue_create("Verifying Thread", nil)

extension ViewController {

    func notificationHandlerCaseInThisTime(notification:NSNotification) {
        
        // When print in this time, no problem.
        print("💬 Received: \(notification.name) (object = \(notification.object))")
    }
    
    func notificationHandlerCaseSync(notification:NSNotification) {
        
        // When print in other thread synchronously, no problem.
        dispatch_sync(queue) {
            
            print("💬 Received: \(notification.name) (object = \(notification.object))")
        }
    }
    
    func notificationHandlerCaseAsync(notification:NSNotification) {
        
        // When print in other thread asynchronously, raise 'message sent to deallocated instance' Error in somewhere after end of the closure.
        // This problem is occurred when this method called in Show ViewController as Modal only.
        // It may be neccessary that I must use a Window Controller to show a View Controller as Modal.
        dispatch_async(queue) {
            
            print("💬 Received: \(notification.name) (object = \(notification.object))")
        }
    }
}

