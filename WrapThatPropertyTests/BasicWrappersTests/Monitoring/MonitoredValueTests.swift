//
//  MonitoredValueTests.swift
//  WrapThatPropertyTests
//
//  Created by Prakhar Tripathi on 22/08/20.
//

import XCTest
@testable import WrapThatProperty

class MonitoredValueTests: XCTestCase {
    
    @Monitored var cost: Int!
    @Monitored var quality: String!

    override func setUpWithError() throws {
        cost = 5
        quality = "Great"
    }

    override func tearDownWithError() throws {
    }
    
    func testInitialValue() throws {
        XCTAssertEqual(cost, 5)
        XCTAssertEqual(quality, "Great")
    }
}
