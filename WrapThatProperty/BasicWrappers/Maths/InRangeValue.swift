//
//  InRangeValue.swift
//  WrapThatProperty
//
//  Created by Prakhar Tripathi on 22/08/20.
//

import Foundation

@propertyWrapper
struct InRangeValue {
    private var value: Int
    private let range = 0...200
    
    public var wrappedValue: Int {
        get { value }
        set {
            if newValue > range.lowerBound && newValue < range.upperBound {
                self.value = newValue
            }
        }
    }
    
    public init(wrappedValue value: Int) {
        self.value = 0
        self.wrappedValue = value
    }
}

public struct GoodStudents {
    @InRangeValue var grade: Int = 0
}
