//
//  KKUIDevice_swiftTests.swift
//  KKUIDevice-swiftTests
//
//  Created by K3 on 2018/5/21.
//  Copyright © 2018年 K3. All rights reserved.
//

import XCTest
@testable import KKUIDevice_swift

class KKUIDevice_swiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        NSLog("%@", UIDevice.current.k3.hardware)
        NSLog("%@", UIDevice.current.k3.model)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
