//
//  CalculatorTests.swift
//  TestBookTests
//
//  Created by 佐藤 賢 on 2019/08/12.
//  Copyright © 2019 佐藤 賢. All rights reserved.
//

@testable import TestBook
import XCTest

class CalculatorTests: XCTestCase {
    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAdd() {
        let result = calculator.add(1, 2)
        XCTAssertEqual(result, 3)
    }
    
    func testSubtract() {
        let result = calculator.subtract(3, 1)
        XCTAssertEqual(result, 2)
    }
    
    func testMultiple() {
        let result = calculator.multiple(2, 3)
        XCTAssertEqual(result, 6)
    }
    
    func testDivision() {
        let result = calculator.division(6, 2)
        XCTAssertEqual(result, 3)
    }
}
