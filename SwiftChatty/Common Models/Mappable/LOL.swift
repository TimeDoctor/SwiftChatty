//
//  LOL.swift
//  SwiftChatty
//
//  Created by Andre Bocchini on 1/16/16.
//  Copyright © 2016 Andre Bocchini. All rights reserved.
//

import Genome

/// Model for LOL tag.
///
/// - SeeAlso: http://winchatty.com/v2/readme#_Toc421451658
public struct LOL {

    public var tag: String = ""
    public var count: Int = 0

    public init() {}

}

extension LOL: CommonMappableModel {

    public mutating func sequence(map: Map) throws {
        try tag <~ map["tag"]
        try count <~ map["count"]
    }

}
