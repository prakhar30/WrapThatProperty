//
//  MonitoredValue.swift
//  WrapThatProperty
//
//  Created by Prakhar Tripathi on 22/08/20.
//

import Foundation

@propertyWrapper
struct Monitored<Value> {
    private var value: Value
    
    public var wrappedValue: Value {
        get { value }
        set {
            print("Changing from \(value) to \(newValue)")
            value = newValue
        }
    }
    
    public init(wrappedValue value: Value) {
        self.value = value
    }
}
