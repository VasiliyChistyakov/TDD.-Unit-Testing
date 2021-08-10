//
//  TDDTests.swift
//  TDDTests
//
//  Created by Чистяков Василий Александрович on 10.08.2021.
//

import XCTest
@testable import TDD


class TDDTests: XCTestCase {
    
    var sut: ViewController!

    override func setUpWithError() throws {
       sut = ViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testLowesVolueShouldBeZero() {
       
        
        sut.setVolume(value: -100)
        
        let volume = sut.volume
        
        XCTAssert(volume == 0, "Lowes value should be equel 0.")
    }
    
    func testHighesVolueShouldBe100() {
        
        sut.setVolume(value: 200)
        
        let volume = sut.volume
        
        XCTAssert(volume == 100, "Hights value should be equel 100.")
    }
    
    func testChairsInStringAreThem() {
        // given
        let string1 = "qwerty"
        let string2 = "ytrewq"
        
        // when
       let bool = sut.charectersCompare(stringOne: string1, stringTwo: string2)
        // them
        
        XCTAssert(bool, "Characters should be the same in two strings")
    }
}
