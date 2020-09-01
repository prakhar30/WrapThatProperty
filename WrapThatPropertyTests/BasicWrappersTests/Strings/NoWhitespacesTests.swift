//
//  NoWhitespacesTests.swift
//  WrapThatPropertyTests
//
//  Created by Prakhar Tripathi on 01/09/20.
//

import XCTest
@testable import WrapThatProperty

class NoWhitespacesTests: XCTestCase {
    
    var id: ValidIDs!
    
    override func setUpWithError() throws {
        id = ValidIDs()
    }

    override func tearDownWithError() throws {
    }
    
    func testNoWhitespaces() throws {
        XCTAssertEqual(id.id, "")
        id.id = "Hello You"
        XCTAssertEqual(id.id, "HelloYou")
        id.id = " Hello how are you \n doing folks ? "
        XCTAssertEqual(id.id, "Hellohowareyoudoingfolks?")
    }
}
