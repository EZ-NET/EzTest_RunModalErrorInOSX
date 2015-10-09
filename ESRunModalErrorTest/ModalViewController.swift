//
//  ModalViewController.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/08.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ModalViewController: NSViewController {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Modal View Controller = %p", self))
    }
    
    override func dismissController(sender: AnyObject?) {
        
        Swift.print(NSString(format: "📍 Modal View Controller (%p) will dismiss.", self))
        super.dismissController(sender)
        
        Swift.print(NSString(format: "📍 A window for Modal View Controller (%p) will close.", self))
        self.view.window?.close()
    }
    
    deinit {
        
        Swift.print(NSString(format: "👼 Modal View Controller Dealocated (%p)", self))
    }
}
