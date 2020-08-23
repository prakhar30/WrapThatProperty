//
//  CustomRangedValueTests.swift
//  WrapThatPropertyTests
//
//  Created by Prakhar Tripathi on 23/08/20.
//

import XCTest
@testable import WrapThatProperty

class CustomRangedValueTests: XCTestCase {
    
    var customRanged: Under500!

    override func setUpWithError() throws {
        customRanged = Under500()
    }

    override func tearDownWithError() throws {
    }
    
    func testCustomRangedValue() throws {
        XCTAssertEqual(customRanged.number, 0)
        customRanged.number = 250
        XCTAssertEqual(customRanged.number, 250)
        customRanged.number = 501
        XCTAssertEqual(customRanged.number, 250)
        customRanged.number = -1
        XCTAssertEqual(customRanged.number, 250)
    }
}
