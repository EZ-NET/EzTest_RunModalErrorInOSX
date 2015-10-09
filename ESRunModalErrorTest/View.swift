//
//  View.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/09.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class View: NSView {

    var lastMessage:MessageWhenDeallocate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Main View = %p", self))
        
        self.lastMessage = MessageWhenDeallocate(String(format: "👼 Main View Dealocated (%p)", self))
    }
}
