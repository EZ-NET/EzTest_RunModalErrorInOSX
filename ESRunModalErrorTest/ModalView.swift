//
//  ModalView.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/09.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ModalView: NSView {

    var lastMessage:MessageWhenDeallocate!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Modal View = %p", self))
        
        self.lastMessage = MessageWhenDeallocate(String(format: "👼 Modal View Dealocated (%p)", self))
    }
}
