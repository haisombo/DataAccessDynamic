//
//  CuteData.swift
//  DataAccessDynamic
//
//  Created by Hai Sombo on 7/2/24.
//

import Foundation

public extension Data {
    
    // - For Print Response Data
    var prettyPrinted: String {
        return MyJson.prettyPrint(value: self.dataToDic)
    }
    var dataToDic: NSDictionary {
        guard let dic: NSDictionary = (try? JSONSerialization.jsonObject(with: self, options: [])) as? NSDictionary else {
            return [:]
        }
        
        return dic
    }
}

public struct MyJson {
    
    // Print JSON Data
    static func prettyPrint(value: AnyObject) -> String {
        if JSONSerialization.isValidJSONObject(value) {
            if let data = try? JSONSerialization.data(withJSONObject: value, options: JSONSerialization.WritingOptions.prettyPrinted) {
                if let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
                    return string as String
                }
            }
        }
        return ""
    }
}
