//
//  Encoder.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/30/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.//

import Foundation

/// Common utilities to encode/decode data in different formats.
public protocol Encoder {

    func base64EncodedString(withString string: String) -> String
    func decodedBase64EncodedString(fromString string: String) -> String

}

extension Encoder {
    
    /// Takes a plain string and encodes it into base64
    ///
    /// - paramter string: String to be encoded to base64
    /// - returns: A base64 encoded string
    public func base64EncodedString(withString string: String) -> String? {
        if let data = string.data(using: String.Encoding.utf8) {
            return data.base64EncodedString(options: [])
        }
        return nil
    }
    /// Takes a base64 encoded string and decodes it into a plain string.
    ///
    /// - paramter string: base64 encoded string
    /// - return: a plain string
    public func decodedBase64EncodedString(fromString string: String) -> String? {
        if let data = Data.init(base64Encoded: string, options: []) {
            if let decodedString = String.init(data: data, encoding: String.Encoding.utf8) {
                return decodedString
            }
        }
        return nil
    }
}
