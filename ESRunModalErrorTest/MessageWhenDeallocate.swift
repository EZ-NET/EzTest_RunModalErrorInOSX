//
//  MessageWhenDeallocate.swift
//  ESRunModalErrorTest
//
//  Created by Tomohiro Kumagai on H27/10/09.
//  Copyright © 平成27年 EasyStyle G.K. All rights reserved.
//

class MessageWhenDeallocate : StringLiteralConvertible {
    
    var message:String
    
    init(_ message:String) {
        
        self.message = message
    }
    
    deinit {
        
        print(self.message)
    }

    convenience required init(stringLiteral value: String) {

        self.init(value)
    }
    
    convenience required init(unicodeScalarLiteral value: String) {
        
        self.init(value)
    }

    convenience required init(extendedGraphemeClusterLiteral value: String) {
        
        self.init(value)
    }
}
