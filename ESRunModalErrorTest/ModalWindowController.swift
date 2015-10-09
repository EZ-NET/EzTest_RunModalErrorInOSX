//
//  ModalWindowController.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/08.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ModalWindowController: NSWindowController {

    var lastMessage:MessageWhenDeallocate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Modal Window Controller = %p", self))
        
        self.lastMessage = MessageWhenDeallocate(String(format: "👼 Modal Window Controller Dealocated (%p)", self))
    }
}
