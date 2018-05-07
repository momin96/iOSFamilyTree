//
//  Family_Tree_iOSTests.swift
//  Family Tree iOSTests
//
//  Created by Nasir Ahmed Momin on 07/05/18.
//  Copyright © 2018 Nasir Ahmed Momin. All rights reserved.
//

import XCTest
@testable import Family_Tree_iOS

class Family_Tree_iOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    func testDataDownload() {
        NSRDataFetcher.shared.getRequestData { (data, response, err) in
            XCTAssertNil(data != nil, "Data is nil")
            XCTAssertNotNil(data != nil, "Not nil")
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
