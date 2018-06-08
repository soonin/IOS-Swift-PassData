//
//  Extentions.swift
//  IOS-Swift-PassData
//
//  Created by Pooya on 2018-06-04.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

extension String {
    
    func split(regex pattern: String) -> [String] {
        
        guard let re = try? NSRegularExpression(pattern: pattern, options: [])
            else { return [] }
        
        let nsString = self as NSString // needed for range compatibility
        let stop = "<SomeStringThatYouDoNotExpectToOccurInSelf>"
        let modifiedString = re.stringByReplacingMatches(
            in: self,
            options: [],
            range: NSRange(location: 0, length: nsString.length),
            withTemplate: stop)
        return modifiedString.components(separatedBy: stop)
    }
    
//    Examples:
//
//    let string1 = "hello world"
//    string1.split(regex: " ")    // ["hello", "world"]
//
//    let string2 = "hello    world"
//    string2.split(regex: "[ ]+")  // ["hello", "world"]
    
    
}
