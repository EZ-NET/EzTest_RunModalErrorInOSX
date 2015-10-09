//
//  WindowController.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/08.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    var lastMessage:MessageWhenDeallocate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Main Window Controller = %p", self))
        
        self.lastMessage = MessageWhenDeallocate(String(format: "👼 Main Window Controller Dealocated (%p)", self))
    }
}
