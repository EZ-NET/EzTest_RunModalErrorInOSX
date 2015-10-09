//
//  ModalWindow.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/08.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

import Cocoa

class ModalWindow: NSWindow {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        Swift.print(NSString(format: "👶 Awake Modal Window = %p", self))
    }
    
    deinit {
        
        Swift.print(NSString(format: "👼 Modal Window Dealocated (%p)", self))
    }
}
