//
//  InRangeValueTests.swift
//  WrapThatPropertyTests
//
//  Created by Prakhar Tripathi on 22/08/20.
//

import XCTest
@testable import WrapThatProperty

class InRangeValueTests: XCTestCase {
    
    var student: GoodStudents!
    
    override func setUpWithError() throws {
        student = GoodStudents()
    }

    override func tearDownWithError() throws {
    }
    
    func testNumberIsInRange() throws {
        XCTAssertEqual(student.grade, 0)
        student.grade = 150
        XCTAssertEqual(student.grade, 150)
        student.grade = 350
        XCTAssertEqual(student.grade, 150)
    }
}
