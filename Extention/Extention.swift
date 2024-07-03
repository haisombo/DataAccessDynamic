//
//  Extention.swift
//  DataAccessDynamic
//
//  Created by Hai Sombo on 7/2/24.
//

import Foundation
import UIKit

public extension String {
    
    //MARK: - Function
    func replace(of: String, with: String) -> String {
        return self.replacingOccurrences(of: of, with: with)
    }
    
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
    
    func isEmptyOrWhitespace() -> Bool {
        // Check empty string
        if self.isEmpty {
            return true
        }
        // Trim and check empty string
        return (self.trimmingCharacters(in: .whitespaces) == "")
    }
}

public extension Encodable {
    
    func asJSONString() -> String? {
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData    = try jsonEncoder.encode(self)
            let jsonString  = String(data: jsonData, encoding: .utf8)
            return jsonString
        } catch {
            return nil
        }
    }
    
    
}
