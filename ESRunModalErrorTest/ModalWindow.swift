//
//  ModalWindow.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/08.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ModalWindow: NSWindow {

    var lastMessage:MessageWhenDeallocate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Modal Window = %p", self))
        
        self.lastMessage = MessageWhenDeallocate(String(format: "👼 Modal Window Dealocated (%p)", self))
    }
}
