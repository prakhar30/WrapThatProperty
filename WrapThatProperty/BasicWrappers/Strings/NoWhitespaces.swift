//
//  NoWhitespaces.swift
//  WrapThatProperty
//
//  Created by Prakhar Tripathi on 01/09/20.
//

import Foundation

@propertyWrapper
struct NoWhitespaces {
    private var value: String
    
    public var wrappedValue: String {
        get { return value }
        set {
            value = newValue.filter { !$0.isWhitespace }
        }
    }
    
    public init(wrappedValue value: String) {
        self.value = ""
        self.wrappedValue = value
    }
}

public struct ValidIDs {
    @NoWhitespaces var id = ""
}
