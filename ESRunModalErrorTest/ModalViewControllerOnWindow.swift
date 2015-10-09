//
//  ModalViewControllerOnWindow.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/09.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ModalViewControllerOnWindow: NSViewController {

    var lastMessage:MessageWhenDeallocate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Modal View Controller = %p", self))
        
        self.lastMessage = MessageWhenDeallocate(String(format: "👼 Modal View Controller Dealocated (%p)", self))
    }
    
    override func dismissController(sender: AnyObject?) {

        Swift.print(NSString(format: "📍 Modal View Controller (%p) will dismiss.", self))
        super.dismissController(sender)

        Swift.print(NSString(format: "📍 A window for Modal View Controller (%p) will close.", self))
        self.view.window?.close()
    }
}
