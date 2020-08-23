//
//  CustomRangedValue.swift
//  WrapThatProperty
//
//  Created by Prakhar Tripathi on 23/08/20.
//

import Foundation

@propertyWrapper
struct CustomRangedValue<Value: Comparable> {
    private var value: Value
    private var range: ClosedRange<Value>
    
    public var wrappedValue: Value {
        get { value }
        set {
            if newValue >= range.lowerBound && newValue <= range.upperBound {
                self.value = newValue
            }
        }
    }
    
    public init(wrappedValue: Value, range: ClosedRange<Value>) {
        self.value = wrappedValue
        self.range = range
    }
}

public struct Under500 {
    @CustomRangedValue(range: 0...500) var number: Int = 0
}
