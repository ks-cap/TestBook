//
//  CalenderUtilTests.swift
//  TestBookTests
//
//  Created by 佐藤 賢 on 2019/08/14.
//  Copyright © 2019 佐藤 賢. All rights reserved.
//

@testable import TestBook
import XCTest

class CalenderUtilTests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsHoliday() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        var mock = MockDateProtocol()
        
        mock.date = formatter.date(from: "2019/01/06")
        XCTAssertTrue(CalenderUtil(dateProtocol: mock).isHoliday())
        
        mock.date = formatter.date(from: "2019/01/07")
        XCTAssertFalse(CalenderUtil(dateProtocol: mock).isHoliday())
        
        mock.date = formatter.date(from: "2019/01/11")
        XCTAssertFalse(CalenderUtil(dateProtocol: mock).isHoliday())
        
        mock.date = formatter.date(from: "2019/01/12")
        XCTAssertTrue(CalenderUtil(dateProtocol: mock).isHoliday())
    }
}

struct MockDateProtocol: DateProtocol {
    var date: Date?
    
    func now() -> Date {
        return date!
    }
}
