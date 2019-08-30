//
//  MoneyTests.swift
//  BeverageTests
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class MoneyTests: XCTestCase {
    
    func testMoneyDescription() {
        // Given
        let money = Money(value: 1_000)
        let expected = "1,000원"
        // When
        let result = money.description
        //Then
        XCTAssertEqual(result, expected)
    }
    
    func testAddiction() {
        //Given
        var money1 = Money(value: 1000)
        let money2 = Money(value: 500)
        let expected = Money(value: 1500)
        //When
        let balence = money1 + money2
        money1 += money2
        //Then
        XCTAssertEqual(balence, expected)
        XCTAssertEqual(money1, expected)
    }
    
    func testSubtraction() {
        //Given
        var money1 = Money(value: 1000)
        let money2 = Money(value: 500)
        let expected = Money(value: 500)
        //When
        let balence = money1 - money2
        money1 -= money2
        //Then
        XCTAssertEqual(balence, expected)
        XCTAssertEqual(money1, expected)
    }
}
